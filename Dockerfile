FROM golang:1.13

RUN apt-get update && apt-get install -y cmake build-essential gperf gcc libc-dev g++ make libssl-dev zlib1g-dev

RUN cd /opt && wget https://github.com/tdlib/td/archive/v1.5.0.tar.gz && tar -xzf v1.5.0.tar.gz \
    && cd td-1.5.0 && mkdir build && cd build && cmake -DCMAKE_BUILD_TYPE=Release .. \
    && cmake --build . -- && make install
