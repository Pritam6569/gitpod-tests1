FROM gitpod/workspace-full-vnc:latest

USER root

RUN cat /etc/fstab ; exit 1

# Clean-up unneeded packages
RUN apt autoremove -y
