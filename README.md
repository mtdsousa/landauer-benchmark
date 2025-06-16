# Landauer Benchmark

This repository provides AIGs and entropy databases generated from different benchmarks (listed below).

| Benchmark | Description | Reference |
| -- | -- | -- |
| bencgen | Adders with inputs ranging from 3 to 16 bits. Adders available: Ripple-carry (c11), Carry-lookahead (c13), Carry-lookahead block (c17), and Ripple-carry using majority gates (maj) | Fabrício Vivas Andrade, Leandro Maia Silva, and Antônio Otávio Fernandes. 2008. BenCGen: a digital circuit generation tool for benchmarks. In Proceedings of the 21st annual symposium on Integrated circuits and system design (SBCCI '08). Association for Computing Machinery, New York, NY, USA, 164–169. https://doi.org/10.1145/1404371.1404418 |
| bencgen-balanced | Benchmark adapted from `bencgen`, applying AIG balancing (using ABC) | J. N. C. Fiche et al., "Energy reduction opportunities in Field-Coupled Nanocomputing Adders," 2020 33rd Symposium on Integrated Circuits and Systems Design (SBCCI), Campinas, Brazil, 2020, pp. 1-6, https://doi.org/10.1109/SBCCI50935.2020.9189895 |
| bencgen-majority | Benchmark adapted from `bencgen`, synthesized as MIG (Majority Inverter Graph) | J. N. C. Fiche et al., "Energy reduction opportunities in Field-Coupled Nanocomputing Adders," 2020 33rd Symposium on Integrated Circuits and Systems Design (SBCCI), Campinas, Brazil, 2020, pp. 1-6, https://doi.org/10.1109/SBCCI50935.2020.9189895 |
| epfl | EPFL combinatorial benchmark | Amarù, Luca Gaetano, Pierre-Emmanuel Gaillardon and Giovanni De Micheli. "The EPFL Combinational Benchmark Suite." (2015). https://doi.org/10.1145/3400302.3415648 
| epfl-majority | Benchmark adapted from `epfl`, synthesized as MIG | E. Testa et al., "Inverter propagation and fan-out constraints for beyond-CMOS Majority-based technologies," in Proc. IEEE Comput. Soc. Annu. Symp. VLSI, Jul. 2017, pp. 164–169. https://doi.org/10.1109/ISVLSI.2017.37 |
| mcnc | MCNC benchmark | S. Yang, "Logic Synthesis and Optimization Benchmarks," Technical Report, MCNC, Dec. 1988, published at 1989 MCNC International Workshop on Logic Synthesis. |

An **AIG file** (`.aig.json`) is a JSON file that contains a NetworkX graph (in a adjacency-list format). In this directed graph: every node with two incoming edges is an AND gate; every node with three incoming edges is a majority gate; every node with no incoming edges is an input; every node with no outgoing edges is a output; and, finally, an edge can optionally have the boolean attribute `inverter` indicating if there is an inverter between its endpoints.

An **entropy database** (`.entropy.json`) is also a JSON file. You should expect a list of objects, where each object contains a set of signals (`variables`) and the entropy value for this set.

> Generated using [Landauer](https://github.com/mtdsousa/landauer)
