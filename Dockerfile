FROM osrf/ros:noetic-desktop-full

WORKDIR /home

# Set up the workspace environment
ENV CATKIN_WS=catkin_ws
RUN mkdir -p $CATKIN_WS/src
RUN mkdir repos

# Set environment variables
ENV SHELL=/bin/bash
ENV PATH=/usr/local/bin:$PATH

RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
    git \
    curl \
    cmake \
    wget \
    vim \
    tmux \
    python3-catkin-tools \
    ros-noetic-catkin

RUN echo "source /opt/ros/$ROS_DISTRO/setup.sh" >> /root/.bashrc
RUN echo "source /home/$CATKIN_WS/devel/setup.bash" >> /root/.bashrc   

# Set the default command to bash
CMD ["/bin/bash"]