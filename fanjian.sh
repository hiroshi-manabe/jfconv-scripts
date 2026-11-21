#!/bin/bash
set -o pipefail
cd -- "$(dirname -- "$0")" || exit 1
export PYTHONUNBUFFERED=1
./jianfan_preprocess.pl --reverse | ./decoder.py ./jianti.bin | ./jianfan_postprocess.pl
