FROM ubuntu:14.04

RUN add-apt-repository ppa:kamalmostafa/minimodem
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y minimodem python-pip python-virtualenv python-opencv python-wxgtk2.8 python-dev python-numpy
RUN mkdir -p /venv && virtualenv --system-site-packages /venv/mavproxy
RUN /venv/mavproxy/bin/pip install --upgrade MAVproxy numpy