#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

if [ $(uname) != "Darwin" ] ; \
then \
    apt-get update ; \
    apt-get install -y \
    automake \
    autotools-dev \
    bison \
    byacc \
    flex \
    libncurses5-dev \
    libncursesw5-dev
else \
    brew install \
    bison \
    byacc \
    flex
fi

aclocal && \
    autoconf && \
    automake && \
    ./configure && \
    make clean && \
    make && \
    make install

git checkout config.h.in
