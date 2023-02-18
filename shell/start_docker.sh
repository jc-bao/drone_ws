export DISPLAY=:28
xhost +

docker run --rm -it --privileged --net=host --ipc=host \
--device=/dev/dri:/dev/dri \
-v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY \
-v $HOME/.Xauthority:/home/$(id -un)/.Xauthority -e XAUTHORITY=/home/$(id -un)/.Xauthority \
-v ~/.ssh:/home/pancy/.ssh:rw \
-e DOCKER_USER_NAME=$(id -un) \
-e DOCKER_USER_ID=$(id -u) \
-e DOCKER_USER_GROUP_NAME=$(id -gn) \
-e DOCKER_USER_GROUP_ID=$(id -g) \
-e ROS_IP=127.0.0.1 \
jcbao/ros-noetic /bin/zsh

'''
docker run -it --rm \
    -v /home/pancy/Documents/drone_ws:/home/user/drone_ws:rw \
    -v ~/.ssh:/home/user/.ssh:rw \
    -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
    -e DISPLAY=:28 \
    -e LOCAL_USER_ID="$(id -u)" \
    --name=px4 jcbao/px4-noetic /bin/bash
'''
