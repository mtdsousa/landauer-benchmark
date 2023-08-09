# Landauer Benchmark

This repository provides AIGs and entropy databases generated using [Landauer](https://github.com/mtdsousa/landauer) for the benchmarks listed below:

| Benchmark | Description | Reference |
| -- | -- | -- |
| bencgen | Adders with inputs ranging from 3 to 16 bits. Adders available: Ripple-carry (c11), Carry-lookahead (c13), Carry-lookahead block (c17), and Ripple-carry using majority gates (maj) | Fabrício Vivas Andrade, Leandro Maia Silva, and Antônio Otávio Fernandes. 2008. BenCGen: a digital circuit generation tool for benchmarks. In Proceedings of the 21st annual symposium on Integrated circuits and system design (SBCCI '08). Association for Computing Machinery, New York, NY, USA, 164–169. https://doi.org/10.1145/1404371.1404418 |
| bencgen2 | Benchmark adapted from `bencgen`, applying AIG balancing (using ABC) | J. N. C. Fiche et al., "Energy reduction opportunities in Field-Coupled Nanocomputing Adders," 2020 33rd Symposium on Integrated Circuits and Systems Design (SBCCI), Campinas, Brazil, 2020, pp. 1-6, https://doi.org/10.1109/SBCCI50935.2020.9189895 |
| epfl | EPFL combinatorial benchmark | Amarù, Luca Gaetano, Pierre-Emmanuel Gaillardon and Giovanni De Micheli. "The EPFL Combinational Benchmark Suite." (2015). https://doi.org/10.1145/3400302.3415648 |
| epfl2 | Benchmark adapted from `epfl`, synthesized as a MIG (Majority Inverter Graph)  | E. Testa et al., "Inverter propagation and fan-out constraints for beyond-CMOS Majority-based technologies," in Proc. IEEE Comput. Soc. Annu. Symp. VLSI, Jul. 2017, pp. 164–169. https://doi.org/10.1109/ISVLSI.2017.37 |
| mcnc | MCNC benchmark | S. Yang, "Logic Synthesis and Optimization Benchmarks," Technical Report, MCNC, Dec. 1988, published at 1989 MCNC International Workshop on Logic Synthesis. |

> You can print this list using `python list.py benchmarks.json --benchmarks`

An AIG file (under `tree/`) is a JSON file that contains a NetworkX graph (in a adjacency-list format). In this directed graph: every node with two incoming edges is an AND gate; every node with three incoming edges is a majority gate; every node with no incoming edges is an input; every node with no outgoing edges is a output; and, finally, an edge can optionally have the boolean attribute `inverter` indicating if there is an inverter between its endpoints.

An entropy database (under `entropy/`) is also a JSON file. You should expect a list of objects, where each object contains a set of signals (`variables`) and the entropy value for this set.

## List

There is a [list](benchmarks.csv) with what you may find in this repository.
> You can generate this list using `python list.py benchmarks.json`

## Generating

If you would like to generate these benchmark files, you should run the command below:
```bash
python benchmark.py benchmarks.json --overwrite --debug
```
In the case where the AIG file or the entropy database already exists, these files will be overwritten unless `--overwrite` is supressed. For each task started, completed or failed, a message will be printed on `stderr` unless `--debug` is supressed.

- Some entropy databases may take hours to be generated. There is an optional switch (`--timeout`) to set a limit for each database (in seconds).

- Multiple benchmark files can be generated at the same time. There is an optional switch (`--processes`) to set the number of processes. The default is the number of cores.

- It is possible to select what you want to generate. For instance, to generate only small benchmarks (up to 10 inputs), except the ones from `bencgen`, one could use `--accept filters/small.json` and `--ignore filters/bencgen.json`.

This command prints a CSV file as output. For instance:

||benchmark|name|tree_overwritten|tree_time|entropy_overwritten|entropy_time|
|--|--|--|--|--|--|--|
|0|epfl|cavlc|True|0.9125719409994417|True|0.704149786999551|
|1|epfl|ctrl|True|0.18873125400023127|True|0.02720098500049062|
|2|epfl|dec|True|0.3435821200000646|True|0.07843496999976196|
|3|epfl2|ctrl|True|0.18767659600052866|True|0.012778926999999385|
|4|epfl2|dec|True|0.49731480900027236|True|0.1325680990003093|
|5|mcnc|5xp1|True|0.11595864499940944|True|0.011943161999624863|
|6|mcnc|9symml|True|0.355932219999886|True|0.07467567799994868|
|...|...|...|...|...|...|...|

> You can redirect it to a file using `--output` switch