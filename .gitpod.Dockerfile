FROM gentoo/stage3-amd64

USER root

RUN file /etc/portage || exit 0

RUN [ ! -e /etc/portage ] && { rm -r /etc/portage || exit 67 ;}

RUN git clone https://github.com/Kreytricks/portage-config /etc/portage 

RUN emerge --sync

RUN emerge cpuid2cpuflags
