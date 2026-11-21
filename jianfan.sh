#!/bin/bash
set -o pipefail
cd -- "$(dirname -- "$0")" || exit 1
export PYTHONUNBUFFERED=1
./jianfan_preprocess.pl | ./decoder.py ./fanti.bin | ./jianfan_postprocess.pl
