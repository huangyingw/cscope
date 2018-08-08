#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

automake \
    && ./configure \
    && make clean \
    && make \
    && make install \
    && ~/loadrc/gitrc/g.sh
