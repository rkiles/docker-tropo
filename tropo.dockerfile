# This docker file will create a container using the latest official Ubuntu image

FROM ubuntu:latest
MAINTAINER Richard Kiles <rkiles@gdt.com>
RUN apt-get -y update && apt-get install -y \
  tar \
  git \
  curl \
  vim \
  wget \
  build-essential \
  python \
  python-dev \
  python-pip \
WORKDIR /tmp
RUN git clone https://github.com/tropo/tropo-webapi-python.git
WORKDIR tropo-webapi-python
RUN python setup.py build
RUN python setup.py install
