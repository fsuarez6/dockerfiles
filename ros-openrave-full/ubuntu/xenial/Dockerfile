FROM fsuarez6/ros-openrave:0.9.0
MAINTAINER Francisco Suarez <fsuarez6@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN echo -e "\n[Installing essentials]"
RUN rm -rf /var/lib/apt/lists/* && apt-get update -q \
	&& apt-get install -qq -y --no-install-recommends \
	apt-utils python-catkin-tools ssh vim

RUN echo -e "\n[Installing base ROS dependencies]"
RUN apt-get install -qq -y --no-install-recommends \
	ros-kinetic-controller-interface ros-kinetic-transmission-interface \
	python-termcolor ros-kinetic-diagnostic-updater \
	ros-kinetic-rqt-runtime-monitor ros-kinetic-position-controllers \
	ros-kinetic-controller-manager ros-kinetic-baldor \
	ros-kinetic-control-msgs ros-kinetic-robot-state-publisher \
	ros-kinetic-bcap ros-kinetic-image-geometry \
	ros-kinetic-hardware-interface ros-kinetic-diagnostic-aggregator \
	ros-kinetic-controller-manager-msgs ros-kinetic-realtime-tools \
	ros-kinetic-tf python-sklearn ros-kinetic-joint-state-controller \
	ros-kinetic-joint-trajectory-controller ros-kinetic-python-orocos-kdl \
	ros-kinetic-tf-conversions \
	ros-kinetic-control-toolbox ros-kinetic-joint-limits-interface \
	ros-kinetic-joint-state-publisher \
	python-tabulate ros-kinetic-rqt-robot-monitor\
	ros-kinetic-effort-controllers

RUN echo -e "\n[Installing image-related ROS dependencies]"
RUN apt-get install -qq -y --no-install-recommends \
	ros-kinetic-camera-calibration-parsers ros-kinetic-cv-bridge\
	ros-kinetic-image-transport ros-kinetic-image-view \
	ros-kinetic-camera-calibration ros-kinetic-image-proc ros-kinetic-roslint
