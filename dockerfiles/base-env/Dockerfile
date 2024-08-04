FROM ubuntu

ENV LANGUAGE en.UTF-8;
ENV LANG en_US.utf8

RUN rm /bin/sh && ln -s /bin/bash /bin/sh;
RUN apt-get update;
RUN apt-get install ca-certificates curl -y;
RUN install -m 0755 -d /etc/apt/keyrings;
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc;
RUN chmod a+r /etc/apt/keyrings/docker.asc;
RUN echo \
   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
   $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
   tee /etc/apt/sources.list.d/docker.list > /dev/null;
RUN apt-get update;
RUN apt-get install \
    curl \
    xz-utils \
    git \
    tmux \
    cmake \
    protobuf-compiler \
    vim \
    xbase-clients \
    xbanish \
    npm \
    zip \
    python3-dev \
    python3-pip \
    python3-setuptools \
    pipx \
    golang-go \
    default-jdk \
    ruby \
    ruby-dev \
    maven \
    language-pack-en \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-buildx-plugin \
    docker-compose-plugin \
    sudo \
    wget \
    -y;

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y;
ENV PATH "${WD}/.cargo/bin:${PATH}"



