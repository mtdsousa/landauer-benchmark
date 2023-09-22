'''

Copyright (c) 2023 Marco Diniz Sousa

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

'''

import argparse
import csv
import logging
import multiprocessing
import pathlib
import sys

import pandas as pd

from timeit import default_timer as timer

import landauer.entropy as entropy
import landauer.evaluate as evaluate
import landauer.parse as parse

def path(working_directory, filename):
    return pathlib.Path(filename) if pathlib.Path(filename).is_absolute() else working_directory / filename

def get_aig(aig_path, source, majority_support, overwrite):
    start = timer()
    if (overwrite or not aig_path.is_file()):
        aig_path.parent.mkdir(parents = True, exist_ok = True)
        aig = parse.parse(source, majority_support)
        with aig_path.open('w') as f:
            f.write(parse.serialize(aig))
        return (aig, True, timer() - start)
    
    with aig_path.open() as f:
        aig = parse.deserialize(f.read())
        return (aig, False, timer() - start)

def generate_entropy_data(entropy_file, aig, overwrite, timeout):
    start = timer()
    if (overwrite or not entropy_file.is_file()):
        entropy_file.parent.mkdir(parents = True, exist_ok = True)
        entropy_data = entropy.entropy(aig, timeout)
        with entropy_file.open('w') as f:
            f.write(entropy.serialize(entropy_data))
            return (True, timer() - start)
    return (False, timer() - start)

def run(working_directory, benchmark, name, majority_support, source, aig_path, entropy_path, overwrite, timeout):
    logging.info(f"'{name}' from '{benchmark}': started")
    try:
        source_path = path(working_directory, source)
        assert source_path.is_file(), f"'{name}' from '{benchmark}': source not found"
        with source_path.open() as f:
            source = f.read()

        aig_absolute_path = path(working_directory, aig_path)
        aig, aig_overwritten, aig_time = get_aig(aig_absolute_path, source, majority_support, overwrite)

        entropy_absolute_path = path(working_directory, entropy_path)
        entropy_overwritten, entropy_time = generate_entropy_data(entropy_absolute_path, aig, overwrite or aig_overwritten, timeout)

        logging.info(f"'{name}' from '{benchmark}': completed")
        return (benchmark, name, aig_overwritten, aig_time, entropy_overwritten, entropy_time)
    
    except Exception as e:
        logging.error(f"'{name}' from '{benchmark}': failed: {e}")
        return None

def target(accept, ignore, benchmark, name):
    return (not accept or ((benchmark, '') in accept or (benchmark, name) in accept)) and (not ignore or ((benchmark, '') not in ignore and (benchmark, name) not in ignore))

def read_filter(filter):
    csvreader = csv.reader(filter)
    next(csvreader) # skip header
    return set(map(tuple, csvreader))

def main():
    argparser = argparse.ArgumentParser()
    argparser.add_argument('benchmark_list', help='Benchmark list as CSV file', type=argparse.FileType('r'))
    argparser.add_argument('--accept', type=argparse.FileType('r'))
    argparser.add_argument('--ignore', type=argparse.FileType('r'))
    argparser.add_argument('--processes', type=int, default=multiprocessing.cpu_count())
    argparser.add_argument('--timeout', type=int, default=0)
    argparser.add_argument('--overwrite', action='store_true')
    argparser.add_argument('--dry-run', action='store_true')
    argparser.add_argument('--debug', action='store_true')
    argparser.add_argument('--output', type=argparse.FileType('w'))
    
    args = argparser.parse_args()
    if args.debug:
        logging.basicConfig(level=logging.DEBUG)

    accept = None
    if args.accept != None:
        accept = read_filter(args.accept)

    ignore = None
    if args.ignore != None:
        ignore = read_filter(args.ignore)

    working_directory = pathlib.Path(args.benchmark_list.name).parent.resolve()
    csvreader = csv.reader(args.benchmark_list)
    next(csvreader) # skip header
    tasks = list((working_directory, benchmark, name, majority_support, source, aig_path, entropy_path, args.overwrite, args.timeout)
        for benchmark, name, majority_support, source, aig_path, entropy_path in csvreader if target(accept, ignore, benchmark, name))

    if args.dry_run:
        csvwriter = csv.writer(sys.stdout)
        csvwriter.writerow(['working_directory', 'benchmark', 'name', 'majority_support', 'source', 'aig_path', 'entropy_path', 'overwrite', 'timeout'])
        for task in tasks:
            csvwriter.writerow(task)
        return

    pool = multiprocessing.Pool(args.processes)
    result = pool.starmap(run, tasks)

    df = pd.DataFrame(filter(None, result), columns=['benchmark', 'name', 'aig_overwritten', 'aig_time', 'entropy_overwritten', 'entropy_time'])
    df.to_csv(args.output if args.output else sys.stdout)

if __name__ == '__main__':
    main()
