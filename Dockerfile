FROM althack/ros2:foxy-gazebo-nvidia

ENV ROS_DISTRO foxy

ENV DEBIAN_FRONTEND=noninteractive

# install utils
RUN apt-get update && apt-get install -y \
  bash-completion \
  build-essential \
  cmake \
  gdb \
  git \
  pylint3 \
  python3-argcomplete \
  python3-pip \
  nano \
  wget \
  curl \
  autoconf \
  automake \
  libtool \
  make \
  g++ \
  unzip \
  sudo \
  libprotobuf-dev \
  protobuf-compiler \ 
  openssh-server \
  gnupg \
  gdb-multiarch \
  default-jre \
  python3 \
  python3-setuptools \
  python3-pip \
  python3-venv \
  ros-foxy-desktop \
  ros-foxy-gazebo-ros-pkgs \
  mesa-utils \
  x11-apps \
  libcanberra-gtk* \
  libglfw3-dev \
  libglew-dev \
  libgl1-mesa-glx \
  libgl1-mesa-dri \
  ros-foxy-rmw-cyclonedds-cpp \
  libpoco-dev \
  libeigen3-dev \
  ros-foxy-control-msgs \
  ros-foxy-xacro \
  ros-foxy-angles \
  ros-foxy-ros2-control \
  ros-foxy-realtime-tools \
  ros-foxy-control-toolbox \
  ros-foxy-moveit \
  ros-foxy-ros2-controllers \
  ros-foxy-joint-state-publisher \
  ros-foxy-joint-state-publisher-gui \
  ros-foxy-ament-cmake-clang-format \
  python3-colcon-common-extensions \
  && rm -rf /var/lib/apt/lists/* 

RUN pip install numpy lark empy catkin_pkg
RUN curl -sSL http://get.gazebosim.org | sh

ARG USERNAME=dev
ARG USER_UID=999
ARG USER_GID=$USER_UID

# create a non-root user
RUN groupadd --gid $USER_GID $USERNAME \
  && useradd -s /bin/bash --uid $USER_UID --gid $USER_GID -m $USERNAME \
  # [Optional] Add sudo support for the non-root user
  && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME\
  && chmod 0440 /etc/sudoers.d/$USERNAME \
  # Cleanup
  && rm -rf /var/lib/apt/lists/* \
  && echo "source /usr/share/bash-completion/completions/git" >> /home/$USERNAME/.bashrc

ENV RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
RUN usermod -a -G video dev
RUN chown -R ${USERNAME}:${USERNAME} /usr/share/gazebo-11/
RUN echo "source /opt/ros/foxy/setup.bash" >> /home/$USERNAME/.bashrc
# define workspace
WORKDIR /app

# installing libfranka
RUN git clone https://github.com/frankaemika/libfranka.git --recursive
RUN cd libfranka && mkdir build && cd build && \
    cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTS=OFF  .. && \
    cmake --build . -j$(nproc) && \
    cpack -G DEB && \
    dpkg -i libfranka*.deb

RUN echo "RCUTILS_COLORIZED_OUTPUT=1" >> /home/$USERNAME/.bashrc

RUN apt-get update && apt-get install -y \
    python3-vcstool \
    ros-foxy-test-msgs \
    ros-foxy-gazebo-ros-pkgs

RUN pip install ikpy

# download rosbridge for Foxglove monitoring
RUN apt update && apt-get install -y ros-foxy-rosbridge-suite

WORKDIR /workspaces/robotic_arm

COPY . .

RUN . /opt/ros/${ROS_DISTRO}/setup.sh
WORKDIR /workspaces/robotic_arm
RUN colcon build --symlink-install 

RUN pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir  citros

RUN pip install --no-cache-dir urllib3  \
  && pip install --no-cache-dir requests  \
  && pip install --no-cache-dir zipp 

RUN pip install --upgrade urllib3  \
  && pip install --upgrade requests  \
  && pip install --upgrade zipp 

RUN echo "if [ -f ${WORKSPACE}/install/setup.bash ]; then source ${WORKSPACE}/install/setup.bash; fi" >> /home/$USERNAME/.bashrc

RUN apt-get update && apt-get -y dist-upgrade --no-install-recommends   

WORKDIR /workspaces/robotic_arm

RUN chmod +x ros2_entrypoint.sh
ENTRYPOINT ["/workspaces/robotic_arm/ros2_entrypoint.sh"]

CMD ["bash"]