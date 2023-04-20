#!/bin/sh

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
RUN_SMALL="${SCRIPT_DIR}/qsort_small ${SCRIPT_DIR}/input_small.dat"
RUN_LARGE="${SCRIPT_DIR}/qsort_large ${SCRIPT_DIR}/input_large.dat"
