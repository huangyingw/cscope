FROM archlinux:latest

ENV DEBIAN_FRONTEND noninteractive
WORKDIR /root/neovim

COPY ./*.sh /root/neovim/

RUN /root/neovim/install_prerequisite.sh
