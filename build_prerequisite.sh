#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

if [ $(uname) != "Darwin" ]
then
    sudo apt-get update
    sudo apt-get install -y \
        automake \
        autotools-dev \
        bison \
        byacc \
        flex \
        libncurses-dev \
        libncurses5-dev \
        libncursesw5-dev

else
    /opt/homebrew/bin/brew install \
        autoconf \
        automake \
        bison \
        byacc \
        flex \
        libtool \
        ncurses
fi

make clean
