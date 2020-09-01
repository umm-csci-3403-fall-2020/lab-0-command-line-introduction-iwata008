#!/usr/bin/env bash

savename=$1
base=$(basename -s .tgz "$savename")
temp_file=$(mktemp -d)

tar -xzf "$savename" -C "$temp_file"

here=$(pwd)
cd "$temp_file" || exit

grep -Rl "DELETE ME!" . | xargs rm
tar -zcf cleaned_"$savename" "$base"
mv cleaned_"$savename" "$here"

cd "$temp_file" || exit
rm -rf "$temp_file"
cd "$here" || exit


