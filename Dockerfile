FROM golang:1.13

RUN apt-get update && apt-get install -y git cmake build-essential gperf gcc libc-dev g++ make libssl-dev zlib1g-dev

RUN cd /opt && git clone https://github.com/tdlib/td.git \
    && cd td && mkdir build && cd build && cmake -DCMAKE_BUILD_TYPE=Release .. \
    && cmake --build . -- -j5 && make install
