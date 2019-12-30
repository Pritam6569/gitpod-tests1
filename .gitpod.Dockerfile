FROM gitpod/workspace-full-vnc:latest

USER root

ENV test=hello
RUN if [ "$test" != hello ]; then exit 255; elif [ "$test" != hello ]; then exit 0; fi
