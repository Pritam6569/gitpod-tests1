FROM vagrant/ubuntu

# To avoid bricked workspaces (https://github.com/gitpod-io/gitpod/issues/1171)
ARG DEBIAN_FRONTEND=noninteractive

USER root

# https://linuxize.com/post/how-to-install-vagrant-on-ubuntu-18-04/
RUN apt update \
  && apt install -y vagrant-libvirt
