docker run -it \
    --user=$USER \
    --env="DISPLAY" \
    --workdir="/home/$USER" \
    --volume="/home/$USER:/home/$USER" \
    --volume="/etc/group:/etc/group:ro" \
    --volume="/etc/passwd:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    ros-openrave:latest \
    /bin/bash

# docker run -it \
#     --env="DISPLAY" \
#     --env="QT_X11_NO_MITSHM=1" \
#     --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
#     ros-openrave:latest \
#     /bin/bash


# XSOCK=/tmp/.X11-unix
# $ XAUTH=/tmp/.docker.xauth
#
# $ touch $XAUTH
# $ xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
#
# $ docker run -i -t --rm \
# 	     -v $XSOCK:$XSOCK:rw \
# 	     -v $XAUTH:$XAUTH:rw \
# 	     -e XAUTHORITY=${XAUTH} \
# 	     -e DISPLAY \
# 	     --name ros \
# 	     diegoferigo/ros \
# 	     bash
