#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

aclocal && \
    autoconf && \
    automake && \
    ./configure && \
    make && \
    make install
