FROM debian:latest
MAINTAINER lfelipedeoliveira, felipe@lfelipedeoliveira.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y; \
    apt-get install wget -y; \
    apt-get upgrade; \
    apt-get clean

# Download & install Diamond

 RUN wget http://cab.spbu.ru/files/release3.13.1/SPAdes-3.13.1-Linux.tar.gz \
  && tar -C /opt -zxf SPAdes-3.13.1-Linux.tar.gz \
  && rm SPAdes-3.13.1-Linux.tar.gz

 ENV PATH /opt/SPAdes-3.13.1-Linux/bin:$PATH
 