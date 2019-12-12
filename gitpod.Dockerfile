FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y xlogo

# Give back control
USER root
