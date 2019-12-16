FROM gentoo/stage3-amd64

USER root

RUN emerge --sync

RUN emerge git

RUN [ ! -e /etc/portage ] && { rm -r /etc/portage || exit 67 ;} || exit 0

RUN git clone https://github.com/Kreytricks/portage-config /etc/portage 

RUN emerge --sync

RUN emerge cpuid2cpuflags
