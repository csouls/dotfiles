#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
export GOOGLE_APPLICATION_CREDENTIALS=$1
python "${SCRIPT_DIR}/list_buckets.py"
