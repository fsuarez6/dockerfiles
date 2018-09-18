# Add access control to the X server
# xhost +local:root
# Run the docker
nvidia-docker run -it \
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
# Remove access control to the X server
# xhost -local:root
