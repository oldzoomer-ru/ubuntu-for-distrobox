FROM quay.io/toolbx/ubuntu-toolbox:26.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get dist-upgrade -y \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
    libgtk-3-0 \
    libgtk-4-1 \
    libnss3 \
    libasound2t64 \
    libgbm1 \
    libnotify4 \
    libxss1 \
    libxtst6 \
    libsecret-1-0 \
    dbus-x11 \
    libwebkitgtk-6.0-4 \
    && rm -rf /var/lib/apt/lists/*
