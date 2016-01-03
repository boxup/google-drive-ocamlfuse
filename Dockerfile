FROM phusion/baseimage:0.9.18
MAINTAINER RPIO

RUN echo "Asia/Singapore" > /etc/timezone \
 && dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update \
    && apt-get -y install software-properties-common \
    && add-apt-repository ppa:alessandro-strada/ppa \
    && echo "00000000001" \
    && apt-get -y update \
    && apt-get -y install google-drive-ocamlfuse \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
