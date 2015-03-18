FROM debian:latest
MAINTAINER Keith Bentrup <keithbentrup@gmail.com>

RUN apt-get update && \
  apt-get install -y \
    iputils-ping \
    tracerout \
    bridge-utils && \
  apt-get clean && \
  rm -rf \
    /var/lib/{apt,dpkg,cache,log}/* \
    /tmp/* \
    /var/tmp/*
