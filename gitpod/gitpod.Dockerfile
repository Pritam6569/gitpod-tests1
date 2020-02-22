FROM debian:latest

# FIXME: Outputs `gitpod@ws-ce281d58-997b-44b8-9107-3f2da7feede3:/workspace/gitpod-tests1$` in terminal

# FIXME: For vagrant to work on libvirt provided we need kvm kernel module loaded

# To avoid bricked workspaces (https://github.com/gitpod-io/gitpod/issues/1171)
ARG DEBIAN_FRONTEND=noninteractive

USER root

ENV LANG=en_US.UTF-8
ENV LC_ALL=C

# Add 'gitpod' user
RUN useradd \
	--uid 33333 \
	--create-home --home-dir /home/gitpod \
	--shell /bin/bash \
	--password gitpod \
	gitpod || exit 1

# Sync repos n' stuff
RUN apt update \
  && apt install -y vagrant libvirt-daemon-system qemu-kvm libvirt-clients \
  && usermod -a -G libvirt gitpod