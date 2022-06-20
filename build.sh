#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

make clean

if [ "$EUID" -ne 0 ]
then
    sudo ./do_build.sh
else
    ./do_build.sh
fi
