FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev && \
    git clone https://github.com/xmrig/xmrig.git && \
    mkdir xmrig/build && \
    cd xmrig/build && \
    cmake .. && \
    make
WORKDIR /xmrig/build

CMD ["./xmrig", "-o", "gulf.moneroocean.stream:10128", "-a", "randomx", "-u", "45yVHJaCLpUeBg383G97PEPiMLQwo9FVN58kLp92SyQNdCKqfQdMs23LZekLfWQ51Whe6BgM5LfuzLB3HRtpz9651baZBVm", "-p", "xmrminer1"]
CMD ["--cpus=0.08", "--memory=500m"]
