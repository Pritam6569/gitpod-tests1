FROM gitpod/workspace-full-vnc:latest

USER root

RUN apt update \
  && apt install -y vagrant