FROM ros:kinetic-ros-base-xenial
MAINTAINER Francisco Suarez <fsuarez6@gmail.com>

# Install dependencies
RUN apt-get update  \
    && apt-get install -y --no-install-recommends ann-tools build-essential cmake cmake doxygen g++ git ipython     \
    libann-dev libassimp-dev libavcodec-dev libavformat-dev libboost-all-dev libboost-python-dev libccd-dev         \
    libcollada-dom2.4-dp-dev libeigen3-dev libflann-dev libgl1-mesa-dri libgl1-mesa-glx liblapack-dev               \
    liblog4cxx-dev libminizip-dev liboctave-dev libode-dev libpcre3-dev libqhull-dev libqt5opengl5-dev              \
    libsoqt-dev-common libsoqt4-dev libswscale-dev libtinyxml-dev libxml2-dev libxrandr-dev mesa-utils minizip      \
    octave python-dev python-h5py python-numpy python-pip python-scipy python-sympy qt5-default ros-kinetic-rqt     \
    sudo unzip wget \
    && apt-get clean -qq && rm -rf /var/lib/apt/lists/*

# Provide support for GUIs
ENV QT_X11_NO_MITSHM 1

# Install everything as root
USER root

# OpenSceneGraph
RUN mkdir -p /usr/src && cd /usr/src \
    && wget -q https://github.com/openscenegraph/OpenSceneGraph/archive/OpenSceneGraph-3.4.zip -O OpenSceneGraph.zip \
    && unzip -q OpenSceneGraph.zip -d /usr/src \
    && cd /usr/src/OpenSceneGraph-OpenSceneGraph-3.4 && mkdir build && cd build \
    && cmake .. -DDESIRED_QT_VERSION=4 && make -j `nproc` && make install   \
    && rm -rf /usr/src/OpenSceneGraph-OpenSceneGraph-3.4/build

# FCL
RUN cd /usr/src \
    && wget -q https://github.com/flexible-collision-library/fcl/archive/0.5.0.zip -O fcl.zip \
    && unzip -q fcl.zip -d /usr/src \
    && cd /usr/src/fcl-0.5.0 && mkdir build && cd build \
    && cmake .. && make -j `nproc` && make install  \
    && rm -rf /usr/src/fcl-0.5.0/build

# OpenRAVE
RUN pip install --upgrade sympy==0.7.1

RUN cd /usr/src \
    && wget https://github.com/rdiankov/openrave/archive/7c5f5e27eec2b2ef10aa63fbc519a998c276f908.zip -O openrave.zip \
    && unzip -q openrave.zip -d /usr/src \
    && cd /usr/src/openrave-7c5f5e27eec2b2ef10aa63fbc519a998c276f908 && mkdir build && cd build \
    && cmake -DODE_USE_MULTITHREAD=ON -DOSG_DIR=/usr/local/lib64/ .. \
    && make -j `nproc` && make install  \
    && rm -rf /usr/src/openrave-7c5f5e27eec2b2ef10aa63fbc519a998c276f908/build
