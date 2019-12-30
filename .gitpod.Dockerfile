FROM gitpod/workspace-full-vnc:latest

USER root

ENV test=hello
RUN [ "$test" != hello ] && exit 255
RUN exit 0