#!/bin/sh

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
RUN_SMALL="${SCRIPT_DIR}/patricia ${SCRIPT_DIR}/small.udp"
RUN_LARGE="${SCRIPT_DIR}/patricia ${SCRIPT_DIR}/large.udp"
