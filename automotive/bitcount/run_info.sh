#!/bin/sh

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
RUN_SMALL="${SCRIPT_DIR}/bitcnts 75000"
RUN_LARGE="${SCRIPT_DIR}/bitcnts 1125000"
