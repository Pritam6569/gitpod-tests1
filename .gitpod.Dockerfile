FROM gentoo/stage3-amd64

USER root

RUN die() { printf 'FATAL: %s\n' "$1" ;}

RUN [ ! -e /etc/portage ] && { rm -r /etc/portage || die "ping" ;}

RUN git clone https://github.com/Kreytricks/portage-config /etc/portage 

RUN emerge --sync

RUN emerge cpuid2cpuflags
