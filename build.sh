#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

if [ $(uname) != "Darwin" ]
then
    apt-get update
    apt-get install -y \
        bison \
        byacc \
        flex
else
    brew install \
        bison \
        byacc \
        flex
fi

commit=`git rev-list --branches -n 1 HEAD -- config.h.in`
git show "$commit"^:config.h.in > config.h.in

aclocal \
    && autoconf \
    && automake \
    && ./configure \
    && make clean \
    && make \
    && make install \
    && ~/loadrc/gitrc/g.sh
