#! /bin/bash

# Set which chips to simulate
CONFIGS=("RocketConfig")

# Set which benchmarks to run
BENCHMARKS=(\
	"automotive/basicmath"\
	"automotive/bitcount"\
	"automotive/qsort"\
	"network/dijkstra"\
	"network/patricia"\
)

# Benchmark dataset size (small/large)
BENCHMARK_SIZE="small"

IFS='/'
for config in "${CONFIGS[@]}"; do
	for bm in "${BENCHMARKS[@]}"; do
		read -ra bm_info <<< "${bm}"
		export CONFIG="${config}"
		export BENCHMARK_CATEGORY="${bm_info[0]}"
		export BENCHMARK="${bm_info[1]}"
		./run.sh
	done
done
