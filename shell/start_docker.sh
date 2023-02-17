xhost +

docker run -it --rm \
    -v /home/pancy/Documents/px4:/home/user/Firmware:rw \
    -v /home/pancy/Documents/drone_ws:/home/user/drone_ws:rw \
    -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
    -e DISPLAY=:28 \
    -e LOCAL_USER_ID="$(id -u)" \
    --name=px4 jcbao/px4-noetic /bin/bash
