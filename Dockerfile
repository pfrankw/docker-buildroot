FROM fedora:41

RUN dnf update -y
RUN dnf install -y perl make gcc g++ git ncurses-devel bc rsync cpio wget which patch autoconf automake m4


RUN git clone https://github.com/buildroot/buildroot --depth 1 --branch 2024.08.1 /buildroot

WORKDIR /buildroot

RUN mkdir overlay

RUN ["/bin/bash"]
