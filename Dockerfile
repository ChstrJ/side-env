FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Update and install basic tools
RUN apt-get update && apt-get install -y \
    git \
    python3 \
    python3-pip \
    vim \
    lsof \
    curl \
    wget \
    sudo \
    software-properties-common \
    build-essential \
    lsb-release \
    ninja-build \
    gettext \
    libtool \
    libtool-bin \
    autoconf \
    automake \
    cmake \
    g++ \
    pkg-config \
    unzip \
    doxygen \
    lsof \
    net-tools \
    libcurl4-openssl-dev \
    php-cli \
    php-zip \
    php-mbstring \
    php-xml \
    php-curl \
    php-tokenizer \
    php-bcmath \
    php-json \
    php-common \
    php-dev \
    php-gd


# Node js
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - \
    && apt-get install -y nodejs

# Neovim
RUN git clone https://github.com/neovim/neovim /tmp/neovim && \
    cd /tmp/neovim && \
    make CMAKE_BUILD_TYPE=Release && \
    sudo make install && \
    cd / && \
    rm -rf /tmp/neovim

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Move ssh files to container
COPY ssh /root/.ssh
COPY alias /root

# Set permissions
RUN chmod 600 /root/.ssh/*

# Working dir
WORKDIR /root
