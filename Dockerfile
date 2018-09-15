FROM ubuntu:18.04
RUN apt-get update && apt-get install -y \
    git \
    emacs
RUN apt-get update && apt-get install -y \
    curl \
    wget
RUN curl -L https://github.com/bbatsov/prelude/raw/master/utils/installer.sh | sh
RUN emacs --daemon --debug-init
COPY tools /tools
CMD ["emacs"]
