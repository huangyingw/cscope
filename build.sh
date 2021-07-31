#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

if [ "$EUID" -ne 0 ]
then
    sudo ./do_build.sh
else
    ./do_build.sh
fi
