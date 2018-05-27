FROM ubuntu:14.04
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    ca-certificates \
    libssl-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/matja/bitcoin-tool
RUN cd bitcoin-tool && make test
ENTRYPOINT ["/bitcoin-tool/bitcoin-tool"]
