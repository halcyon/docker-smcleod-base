FROM debian:jessie

ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL C.UTF-8
ENV LESS -R

RUN apt-get update && apt-get install -y \
    apt-utils \
    locales \
    git-core \
    git-svn \
    bzip2 \
    unzip \
    tmux \
    zsh \
    autojump \
    wget \
    curl \
    make \
    texinfo \
    install-info && \
    apt-get clean

RUN dpkg-reconfigure locales && \
    locale-gen C.UTF-8 && \
    /usr/sbin/update-locale LANG=C.UTF-8
