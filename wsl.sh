#!/bin/bash

# Update software sources and install required packages
apt-get update

apt-get install -y \
    tree \
    htop \
    openssl \
    jq \
    vim \
    ssh \
    curl \
    fish \
    tmux \
    rsync \
    wget \
    git \
    nano \
    zip \
    ffmpeg \
    libxext6 \
    libsm6 \
    dialog \
    apt-utils

apt-get install -y \
    software-properties-common \
    libgstreamer1.0-dev \
    libgstreamer-plugins-base1.0-dev \
    libgstreamer-plugins-bad1.0-dev \
    gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-libav \
    gstreamer1.0-tools \
    gstreamer1.0-x \
    gstreamer1.0-alsa \
    gstreamer1.0-gl \
    gstreamer1.0-gtk3 \
    gstreamer1.0-qt5 \
    gstreamer1.0-pulseaudio \
    libcairo2-dev \
    libxt-dev \
    libgirepository1.0-dev \
    pkg-config \
    python3-dev \
    libssl-dev \
    libcurl4-openssl-dev \
    python3.10-dev \
    python3-distutils

# Add Python PPA repository and install corresponding packages
add-apt-repository ppa:deadsnakes/ppa -y && \
    apt-get update && \
    apt-get install -y libssl-dev libcurl4-openssl-dev python3.10-dev python3-distutils

# Download and install pip
wget https://bootstrap.pypa.io/get-pip.py && \
    python3.10 get-pip.py

# Install protobuf
pip install protobuf

# # Create project directory and switch to it
# APP_DIR=PCSafety
# mkdir -p /opt/${APP_DIR}
# cd /opt/${APP_DIR}

# Install Python packages
pip install -r requirements.txt

pip install torch==2.0.0+cu118 torchvision==0.15.1+cu118 torchaudio==2.0.1 --index-url https://download.pytorch.org/whl/cu118

# Create symbolic link
ln -s /usr/local/lib/python3.10/dist-packages/torch/lib/libnvrtc-672ee683.so.11.2 /usr/local/lib/python3.10/dist-packages/torch/lib/libnvrtc.so

# numpy dependence
pip install lap==0.4.0

