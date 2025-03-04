#! /bin/bash

set -eux

filename=${1}
output_dir=${2}
module=$(basename ${filename} | cut -f1,2 -d'.')

mkdir -p ${output_dir}
abidw -o ${output_dir}/${module}.abi --drop-private-types ${filename}
