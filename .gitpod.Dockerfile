FROM gitpod/workspace-full-vnc:latest

USER root

RUN apt update \
  && apt upgrade -y \
  && apt install -y gnuplot