FROM ubuntu:14.04
MAINTAINER Francisco Suarez <fsuarez6@gmail.com>

# Install dependencies
RUN rm -rf /var/lib/apt/lists/* && apt-get update  \
    && apt-get install -y --no-install-recommends apt-utils lsb-release sudo unzip wget

# Install everything as root
USER root

RUN mkdir -p ~/git && cd ~/git    \
    && wget --no-check-certificate https://github.com/crigroup/openrave-installation/archive/0.9.0.zip \
    -O openrave-installation.zip    \
    && unzip -q openrave-installation.zip -d ~/git    \
    && cd openrave-installation-0.9.0 && sudo ./install-dependencies.sh \
    && apt-get clean -qq && rm -rf /var/lib/apt/lists/*
