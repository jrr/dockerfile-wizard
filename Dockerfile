FROM ubuntu:xenial

RUN apt-get update && apt-get install -y gcc git wget make libncurses-dev flex bison gperf python python-serial openssh-client && apt-get clean
RUN wget https://dl.espressif.com/dl/xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz
RUN tar xvfz xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz
RUN rm xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz
ENV PATH=$(PATH)::$HOME/xtensa-esp32-elf/bin

