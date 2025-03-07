FROM ubuntu:20.04
LABEL maintainer="Prakhar Saxena prakharrsaxena@gmail.com"

ENV TZ=Europe/Minsk
ENV BITCOIN_VERSION=23.0

# Set timezone
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install Ubuntu utilities and essential dependencies
RUN apt-get update && apt-get install -y \
    software-properties-common \
    build-essential \
    curl wget jq \
    git python3 python3-pip

# Install Rust
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN echo 'source $HOME/.cargo/env' >> $HOME/.bashrc

# Install Bitcoin Core
RUN cd /tmp/ && \
    wget https://bitcoincore.org/bin/bitcoin-core-$BITCOIN_VERSION/bitcoin-$BITCOIN_VERSION-x86_64-linux-gnu.tar.gz -O bitcoin.tar.gz && \
    tar -xvzf bitcoin.tar.gz && \
    mv /tmp/bitcoin-$BITCOIN_VERSION/bin/bitcoin* /usr/local/bin/ && \
    rm -rf bitcoin.tar.gz /tmp/bitcoin-$BITCOIN_VERSION

# Clone Lnprototest
RUN git clone https://github.com/rustyrussell/lnprototest.git /workdir/lnprototest

# Set workdir and copy project files
WORKDIR /workdir
COPY . .

# Set PYTHONPATH environment variable
ENV PYTHONPATH="/workdir/lnprototest"

CMD ["./docker/entrypoint.sh"]
