FROM gentoo/stage3-amd64

USER root

RUN emerge --sync

RUN emerge dev-vcs/git

RUN rm -r /etc/portage

RUN git clone https://github.com/Kreytricks/portage-config /etc/portage 

RUN mkdir /usr/local/portage

RUN eselect profile set default/linux/amd64/17.0

RUN emerge --sync

RUN emerge cpuid2cpuflags
