FROM ubuntu:latest

MAINTAINER Joseph Callen <jcpowermac@gmail.com>


RUN apt-get -y update \
    && apt-get -y install git make build-essential wget genisoimage mkisofs liblzma-dev \
    && apt-get autoremove \
    && apt-get clean \
    && rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/*

RUN git clone git://git.ipxe.org/ipxe.git /home/ipxe
WORKDIR /home/ipxe
RUN ls -l
WORKDIR /home/ipxe/src
CMD make
