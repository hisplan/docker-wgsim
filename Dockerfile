FROM ubuntu:16.04

LABEL maintainer="Jaeyoung Chun (jaeyoung.chun@weizmann.ac.il)"

RUN apt-get update -y \
    && apt-get install -y wget build-essential git zlib1g-dev

# build wgsim
RUN cd /tmp \
    && git clone https://github.com/lh3/wgsim.git \
    && cd wgsim \
    && gcc -g -O2 -Wall -o wgsim wgsim.c -lz -lm \
    && cp wgsim /usr/local/bin

# clearn up
RUN rm -rf /tmp/wgsim

ENTRYPOINT ["/usr/local/bin/wgsim"]
