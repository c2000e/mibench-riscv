#! /bin/bash

# Set which chip to use for simulation.
if [ -z "${CONFIG}" ]; then
	CONFIG="RocketConfig"
fi

# Configure these to point to the benchmark you want to run.
if [ -z "${BENCHMARK_CATEGORY}" ]; then
	BENCHMARK_CATEGORY="automotive"
fi
if [ -z "${BENCHMARK}" ]; then
	BENCHMARK="qsort"
fi
if [ -z "${BENCHMARK_SIZE}" ]; then
	BENCHMARK_SIZE="small"
fi

# The '-V' option below outputs cycle by cycle information, but it can 
# take a lot of space.
if [ -z "${BIG_DISK}" ]; then
	BIG_DISK="false"
fi

# Verify benchmark exists/is built.
BENCHMARK_BASE_DIR="mibench-riscv"
BENCHMARK_INFO="${BENCHMARK_BASE_DIR}/${BENCHMARK_CATEGORY}/${BENCHMARK}/run_info.sh"
if [ ! -f "${BENCHMARK_INFO}" ]; then
	echo "Could not find ${BENCHMARK_INFO}"
fi

# Benchmark specific RUN_SMALL and RUN_LARGE variables are stored in here.
source ${BENCHMARK_INFO}

# Configure 
if [ "${BENCHMARK_SIZE}" = "small" ]; then
	BM_CMD="${RUN_SMALL}"
else
	BM_CMD="${RUN_LARGE}"
fi

# Create directory to place .log and .out files.
OUTPUT_DIR="mibench-output/${CONFIG}"
mkdir -p ${OUTPUT_DIR}

# Setup output options based on disk size.
# '-c' reports the cycles at the end of the .log file
# '-V' outputs cycle-by-cycle execution information into the .out file
# You can 'cat' the output of these files while the simulation is running to
# check on progress. I would only do this for the .log file though, the .out
# file can get very large.
if [ "${BIG_DISK}" = "true" ]; then
	SIM_OPTIONS="-c -V"
else
	SIM_OPTIONS="-c"
fi

# Run benchmark (this will probably take awhile).
echo "Running ${CONFIG}: ${BENCHMARK}"
./simulator-chipyard-${CONFIG} ${SIM_OPTIONS} pk .${BM_CMD} 1> $OUTPUT_DIR/$BENCHMARK.log 2> $OUTPUT_DIR/$BENCHMARK.out
