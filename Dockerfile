FROM debian:latest
MAINTAINER lfelipedeoliveira, felipe@lfelipedeoliveira.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y; \
    apt-get install apt-utils wget pkg-config python3-matplotlib python3-pip -y; \
    apt-get clean

RUN ln -s /usr/bin/python3 /usr/bin/python

# Download & install

 RUN wget http://cab.spbu.ru/files/release3.13.1/SPAdes-3.13.1-Linux.tar.gz \
  && tar -C /opt -zxf SPAdes-3.13.1-Linux.tar.gz \
  && rm SPAdes-3.13.1-Linux.tar.gz

 ENV PATH /opt/SPAdes-3.13.1-Linux/bin:$PATH
 