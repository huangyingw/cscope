#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

./build_prerequisite.sh

aclocal && \
    autoconf && \
    automake && \
    ./configure && \
    make && \
    make install
