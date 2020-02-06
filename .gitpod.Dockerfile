FROM gitpod/workspace-full-vnc:latest

USER root

RUN echo $(blkid) ; exit 1

# Clean-up unneeded packages
RUN apt autoremove -y
