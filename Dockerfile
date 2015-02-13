FROM debian:jessie
MAINTAINER George Lewis <schvin@schvin.net>

ENV REFRESHED_AT 2015-02-13

RUN apt-get update && apt-get install -y qemu-utils && rm -rf /var/lib/apt/lists/*

WORKDIR /tmp
ENTRYPOINT ["qemu-img"]
CMD ["--help"]
