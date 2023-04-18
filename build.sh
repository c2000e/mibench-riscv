#! /bin/bash

# Build supported benchmarks

cd automotive/basicmath
make

cd ../bitcount
make

cd ../qsort
make

cd ../../network/dijkstra
make

cd ../patricia
make
