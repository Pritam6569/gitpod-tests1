FROM gitpod/workspace-full-vnc:latest

USER root

RUN passwd -d root

# Clean-up unneeded packages
#RUN apt autoremove -y
