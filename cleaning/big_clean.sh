#!/usr/bin/env bash

mktemp -d tempfile_machi
tar -C tempfile_machi -xzf little_dir.tgz
tar -C tempfile_machi -xzf big_dir.tgz
cd tempfile_machi

grep -ril "DELETE" little_dir | xargs rm -r
grep -ril "DELETE" big_dir | xargs rm -r

tar -C /Users/machiiwata/Desktop/CSCI_3403/Lab 0/lab-0-command-line-introduction-iwata008/cleaning -zcf cleaned_little_dir.tgz little_dir.tgz
