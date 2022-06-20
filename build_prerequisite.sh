#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

apt-get update ; \
    apt-get install -y \
    automake \
    autotools-dev \
    bison \
    byacc \
    flex \
    libncurses5-dev \
    libncursesw5-dev

brew install \
    autoconf \
    automake \
    bison \
    byacc \
    flex \
    libtool

pacman -Syy && \
    pacman --noconfirm -Sy \
    autoconf \
    automake \
    bison \
    byacc \
    flex \
    libtool \
    make
