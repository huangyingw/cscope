FROM archlinux:latest

ENV DEBIAN_FRONTEND noninteractive
WORKDIR /root/cscope

COPY ./*.sh /root/cscope/

RUN pacman -Syy && \
    pacman --noconfirm -Sy \
    zsh

RUN /root/cscope/build_prerequisite.sh
