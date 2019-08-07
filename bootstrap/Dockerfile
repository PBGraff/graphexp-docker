FROM nginx:1.13.9

ENV PATH /usr/local/bin:$PATH

RUN apt-get update && apt-get -y install wget unzip

RUN cd /tmp && \
    wget --no-check-certificate https://github.com/erandal/graphexp/archive/master.zip && \
    unzip master.zip && \
    mv graphexp-master/*  /usr/share/nginx/html && \
    rm -R /tmp/graphexp-master

RUN apt-get remove -y wget && \
    apt-get remove -y unzip && \
    rm -R /var/lib/apt/lists/*

WORKDIR  /usr/share/nginx/html
