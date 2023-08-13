xhost +local:docker

nvidia-docker run --privileged -it \
           -e NVIDIA_DRIVER_CAPABILITIES=all \
           -e NVIDIA_VISIBLE_DEVICES=all \
           --volume=/home/mrmmm/SLAM/:/workspace \
           --volume=/tmp/.X11-unix:/tmp/.X11-unix:rw \
           --net=host \
           --ipc=host \
           --shm-size=1gb \
           --name=orb-slam \
           --env="DISPLAY=$DISPLAY" \
           jahaniam/orbslam3 /bin/bash