# OpenMP Benchmark

OpenMP benchmark examples with Google Benchmark.

No dependencies are needed to be installed, as CMake (*minimum version 3.25*) downloads GTest and GBenchmark.

## Instructions

To build with CMake

```bash
cmake -B build
cd build
make
```

To run the benchmarks from the `build` folder use respectively

```bash
cd benchmark
./bench_saxpy
./bench_pi
./bench_laplace2d
```
