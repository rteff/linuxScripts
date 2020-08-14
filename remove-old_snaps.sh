#!/usr/bin/env bash

set -eu

LANG=en_US.UTF-8 snap list --all | awk '/disabled/{print $1, $3}' |
while read snapname revision 
do
    sudo snap remove "$snapname" --revision="$revision"
done
