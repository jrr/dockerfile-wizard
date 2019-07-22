FROM ubuntu:bionic

RUN apt-get update && \
    apt-get install -y gcc git wget make ninja-build libncurses-dev flex bison gperf python python-serial openssh-client && \
    apt-get clean

ARG tarball=xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz
# ARG tarball=xtensa-esp32-elf-gcc8_2_0-esp32-2019r1-linux-amd64.tar.gz
ARG cmake_sh=https://github.com/Kitware/CMake/releases/download/v3.15.0/cmake-3.15.0-Linux-x86_64.sh

RUN wget https://dl.espressif.com/dl/$tarball
RUN tar xvfz $tarball
RUN rm $tarball
ENV PATH $PATH:$HOME/xtensa-esp32-elf/bin

RUN wget $cmake_sh
RUN sh cmake-3.15.0-Linux-x86_64.sh --skip-license
ENV PATH $PATH:$HOME/cmake-3.15.0-Linux-x86_64/bin

RUN git --version
RUN cmake --version

