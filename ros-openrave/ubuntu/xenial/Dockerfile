# Uses ros-kinetic-base as starting point
FROM ros:kinetic-ros-base-xenial
MAINTAINER Francisco Suarez <fsuarez6@gmail.com>

# Install dependencies
RUN rm -rf /var/lib/apt/lists/*

RUN apt-get update                                                                          \
    && apt-get install -y --no-install-recommends build-essential cmake doxygen g++ git     \
    ipython octave python-dev python-h5py python-numpy python-pip python-scipy python-sympy \
    qt5-default minizip                                                                     \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update                                                                          \
    && apt-get install -y --no-install-recommends ann-tools cmake libann-dev libassimp-dev  \
    libavcodec-dev libavformat-dev libboost-python-dev libboost-all-dev libccd-dev          \
    libcollada-dom2.4-dp-dev libeigen3-dev libflann-dev liblapack-dev liblog4cxx-dev        \
    libminizip-dev liboctave-dev libode-dev libpcre3-dev libqhull-dev libsoqt-dev-common    \
    libsoqt4-dev libswscale-dev libtinyxml-dev libxml2-dev                                  \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get clean -qq && rm -rf /var/lib/apt/lists/*

# Switch to a normal user
RUN useradd -ms /bin/bash kratos
USER kratos
WORKDIR /home/kratos
