FROM gitpod/workspace-full-vnc:latest

# To avoid bricked workspaces (https://github.com/gitpod-io/gitpod/issues/1171)
ARG DEBIAN_FRONTEND=noninteractive

USER root

# https://linuxize.com/post/how-to-install-vagrant-on-ubuntu-18-04/
RUN apt update \
  && curl -O https://releases.hashicorp.com/vagrant/2.2.6/vagrant_2.2.6_x86_64.deb \
  && apt install ./vagrant_2.2.6_x86_64.deb \
  && apt install -y virtualbox virtualbox-dkms 