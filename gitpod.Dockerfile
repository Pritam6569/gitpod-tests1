FROM gitpod/workspace-full:latest

USER root

// Test GUI apps
RUN apt-get update && apt-get install -y xlogo

USER gitpod