FROM ubuntu

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -q && apt-get install -y \
    build-essential \
    git \
    liblzma-dev \
    python3 \
    python3-pip \
    ruby-dev \
    zlib1g-dev

RUN gem install bundler jekyll-theme-cs50
RUN pip3 install s3cmd

COPY ./entrypoint /usr/local/bin/

ENTRYPOINT ["entrypoint"]
