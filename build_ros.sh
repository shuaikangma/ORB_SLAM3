echo "Building ROS nodes"

cd Examples_old/ROS/ORB_SLAM3
# mkdir build
# cd build
# cmake .. -DROS_BUILD_TYPE=Release -Wno-dev
# make -j
catkin_make
