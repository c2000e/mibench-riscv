#!/bin/sh

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
RUN_SMALL="${SCRIPT_DIR}/dijkstra_small ${SCRIPT_DIR}/input.dat"
RUN_LARGE="${SCRIPT_DIR}/dijkstra_large ${SCRIPT_DIR}/input.dat"
