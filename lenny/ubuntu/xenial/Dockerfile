# Uses ros-kinetic-base as starting point
FROM ros-openrave:latest

# Install required ROS packages from apt-get
RUN apt-get install -y --no-install-recommends ros-kinetic-moveit-python python-matplotlib                          \
    ros-kinetic-controller-interface ros-kinetic-transmission-interface ros-kinetic-urdf                            \
    ros-kinetic-resource-retriever ros-kinetic-joint-state-controller ros-kinetic-moveit-ros-visualization          \
    python-enum34 ros-kinetic-position-controllers ros-kinetic-rviz ros-kinetic-controller-manager                  \
    ros-kinetic-python-orocos-kdl ros-kinetic-baldor ros-kinetic-industrial-utils ros-kinetic-control-msgs          \
    ros-kinetic-industrial-robot-client ros-kinetic-industrial-msgs gazebo7 ros-kinetic-robot-state-publisher       \
    ros-kinetic-criutils ros-kinetic-image-geometry ros-kinetic-moveit-fake-controller-manager                      \
    ros-kinetic-hardware-interface ros-kinetic-moveit-planners-ompl ros-kinetic-moveit-kinematics                   \
    ros-kinetic-moveit-commander ros-kinetic-industrial-robot-simulator ros-kinetic-moveit-msgs                     \
    ros-kinetic-gazebo-msgs ros-kinetic-moveit-ros-move-group ros-kinetic-roslint                                   \
    ros-kinetic-joint-trajectory-controller python-shapely ros-kinetic-aruco-ros ros-kinetic-control-toolbox        \
    ros-kinetic-cv-bridge ros-kinetic-gazebo-ros ros-kinetic-tf-conversions ros-kinetic-gazebo-ros-control          \
    ros-kinetic-xacro ros-kinetic-rqt-service-caller ros-kinetic-joint-state-publisher ros-kinetic-simple-message

RUN apt-get install -y --no-install-recommends python-pymodbus

# Switch to a normal user
RUN useradd -ms /bin/bash fsuarez6
USER fsuarez6
WORKDIR /home/fsuarez6
