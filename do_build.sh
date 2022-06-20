#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

# make clean
aclocal && \
    autoconf && \
    automake && \
    ./configure && \
    make && \
    make install
