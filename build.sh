#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

automake \
    && ./configure \
    && ~/loadrc/gitrc/g.sh
