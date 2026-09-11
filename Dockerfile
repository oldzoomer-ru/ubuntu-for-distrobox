FROM docker.io/library/ubuntu:26.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    apt-utils \
    dialog \
    sudo \
    locales \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y --no-install-recommends \
    libsecret-1-0 \
    gnome-keyring \
    dbus-x11 \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y --no-install-recommends \
    libgtk-3-0 \
    libgtk-4-1 \
    libnss3 \
    libasound2t64 \
    libgbm1 \
    libnotify4 \
    libxss1 \
    libxtst6 \
    libvulkan1 \
    && rm -rf /var/lib/apt/lists/*
