FROM ubuntu:18.04
RUN apt-get update && apt-get install -y \
    git \
    emacs
COPY tools /tools