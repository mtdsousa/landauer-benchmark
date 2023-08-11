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
import json
import logging
import pandas
import pathlib
import sys

import landauer.parse as parse
import landauer.summary as summary
import landauer.entropy as entropy

def path(working_directory, filename):
    return pathlib.Path(filename) if pathlib.Path(filename).is_absolute() else working_directory / filename

def read_aig(working_directory, benchmark_item):
    aig = path(working_directory, benchmark_item['files']['aig'])
    if not aig.is_file():
        return None
    with aig.open() as f:
        return parse.deserialize(f.read())
    
def read_entropy_database(working_directory, benchmark_item):
    entropy_file = path(working_directory, benchmark_item['files']['entropy'])
    if not entropy_file.is_file():
        return None
    with entropy_file.open() as f:
        return entropy.deserialize(f.read())

def main():
    argparser = argparse.ArgumentParser()
    argparser.add_argument('benchmarks', type = argparse.FileType('r'))
    argparser.add_argument('--benchmarks', dest='list_benchmarks', action = 'store_true')
    argparser.add_argument('--output', type = argparse.FileType('w'))

    args = argparser.parse_args()
    
    benchmarks = json.loads(args.benchmarks.read())
    
    if args.list_benchmarks:
        data = [{'name': benchmark['name'], 'description': benchmark['description']} for benchmark in benchmarks]
        df = pandas.DataFrame.from_dict(data)
        df.to_csv(args.output if args.output else sys.stdout)
        return
    
    working_directory = pathlib.Path(args.benchmarks.name).parent.resolve()
    data = list()
    for benchmark in benchmarks:
        for item in benchmark['list']:
            row = {'benchmark': benchmark['name'],
                    'name': item['name'],
                    'majority_support': item['majority_support'],
                    'depth': None,
                    'entropy_losses': None,
                    'inputs': None,
                    'outputs': None,
                    'gates': None}
            
            aig = read_aig(working_directory, item)
            if aig:
                entropy_database = read_entropy_database(working_directory, item)
                row.update(summary.summary(aig, entropy_database))
            data.append(row)

    df = pandas.DataFrame.from_dict(data)
    df.to_csv(args.output if args.output else sys.stdout)

if __name__ == '__main__':
    main()
