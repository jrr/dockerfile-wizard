FROM ubuntu:xenial

RUN active apt update && apt install -y gcc git wget make libncurses-dev flex bison gperf python python-serial
RUN wget https://dl.espressif.com/dl/xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz
RUN tar xvfz xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz
ENV PATH=$(PATH)::$HOME/xtensa-esp32-elf/bin

