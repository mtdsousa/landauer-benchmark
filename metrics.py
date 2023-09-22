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
import pathlib
import sys

import landauer.parse as parse
import landauer.summary as summary
import landauer.entropy as entropy

def path(working_directory, filename):
    return pathlib.Path(filename) if pathlib.Path(filename).is_absolute() else working_directory / filename

def read_aig(working_directory, aig_file):
    aig = path(working_directory, aig_file)
    if not aig.is_file():
        return None
    with aig.open() as f:
        return parse.deserialize(f.read())
    
def read_entropy_database(working_directory, entropy_database_file):
    entropy_file = path(working_directory, entropy_database_file)
    if not entropy_file.is_file():
        return None
    with entropy_file.open() as f:
        return entropy.deserialize(f.read())

def main():
    argparser = argparse.ArgumentParser()
    argparser.add_argument('benchmark_list', help='Benchmark list as CSV file', type=argparse.FileType('r'))
    argparser.add_argument('--output', type=argparse.FileType('w'))
    args = argparser.parse_args()
    
    working_directory = pathlib.Path(args.benchmark_list.name).parent.resolve()
    csvreader = csv.reader(args.benchmark_list)
    next(csvreader) # skip header
    csvwriter = csv.writer(args.output if args.output else sys.stdout)

    csvwriter.writerow(['benchmark', 'name', 'depth', 'entropy_losses', 'inputs', 'outputs', 'gates'])
    for benchmark, name, majority_support, source, aig_file, entropy_file in csvreader:
        aig = read_aig(working_directory, aig_file)
        if aig:
            entropy_database = read_entropy_database(working_directory, entropy_file)
            s = summary.summary(aig, entropy_database)
            csvwriter.writerow([benchmark, name, s['depth'], s['entropy_losses'], s['inputs'], s['outputs'], s['gates']])
            continue

        csvwriter.writerow([benchmark, name, None, None, None, None, None])

if __name__ == '__main__':
    main()
