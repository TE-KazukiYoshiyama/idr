FROM nvidia/cuda:11.0-cudnn8-devel-ubuntu18.04


COPY requirements.txt /opt/requirements.txt

RUN apt-get update
RUN apt-get install -y \
  python3 \
  python3-pip \
  libsm6 \
  libxrender1 \
  libxext-dev

RUN pip3 install -r /opt/requirements.txt
