FROM ubuntu:bionic

RUN apt-get update && \
    apt-get install -y gcc git wget make libncurses-dev flex bison gperf python python-serial openssh-client && \
    apt-get clean
RUN wget https://dl.espressif.com/dl/xtensa-esp32-elf-gcc8_2_0-esp32-2019r1-linux-amd64.tar.gz
RUN tar xvfz xtensa-esp32-elf-gcc8_2_0-esp32-2019r1-linux-amd64.tar.gz
RUN rm xtensa-esp32-elf-gcc8_2_0-esp32-2019r1-linux-amd64.tar.gz
ENV PATH $PATH:$HOME/xtensa-esp32-elf/bin
RUN git --version

