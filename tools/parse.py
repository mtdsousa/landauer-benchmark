"""

Copyright (c) 2025 Marco Diniz Sousa

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

"""

import csv
import os
import sys

from pathlib import Path

from landauer import parse, summary

csvwriter = csv.writer(sys.stdout)
csvwriter.writerow(["benchmark", "design", "inputs", "outputs", "gates", "time"])

current_path = Path(os.path.dirname(os.path.realpath(__file__)))
benchmark_path = current_path / ".." / "benchmark"

for root, dirs, files in os.walk(benchmark_path):
    for filename in sorted(files):
        if not filename.endswith(".v"):
            continue
        
        benchmark_name = Path(root).name
        majority_support = benchmark_name.endswith("-majority")
        
        input_path = Path(root) / filename
        design_name = filename.removesuffix(".v")
        with open(input_path, "r") as f:
            design = f.read()
            aig = parse.parse(design, majority_support=majority_support)
            data = summary.summary(aig)
            csvwriter.writerow([
                benchmark_name,
                design_name,
                data["inputs"],
                data["outputs"],
                data["gates"]
            ])
            sys.stdout.flush()

        output_path = Path(root) / (design_name + ".aig.json")
        with open(output_path, "w") as f:
            f.write(parse.serialize(aig))
