FROM gitpod/workspace-full-vnc:latest

USER root

RUN passwd -u root

# Clean-up unneeded packages
#RUN apt autoremove -y
