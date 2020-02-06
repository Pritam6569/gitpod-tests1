FROM gitpod/workspace-full-vnc:latest

USER root

RUN mkdir /mnt/yolo

RUN printf '%s\n' "/dev/sda1 /mnt/yolo ext4 defaults 0 0" > /etc/fstab

# Clean-up unneeded packages
#RUN apt autoremove -y
