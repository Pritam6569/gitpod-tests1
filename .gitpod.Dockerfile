FROM gitpod/workspace-full-vnc:latest

USER root

RUN blkid ; exit 1

# Clean-up unneeded packages
RUN apt autoremove -y
