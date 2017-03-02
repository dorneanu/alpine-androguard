FROM alpine:latest

MAINTAINER Victor Dorneanu <no-spam ATT dornea DOT nu>
USER root

RUN apk --update add python py-pip openssl git gcc python-dev bash musl-dev g++

# Python requirements
ADD ./requirements.txt /tmp/requirements.txt
RUN pip install --upgrade pip
RUN pip install -r /tmp/requirements.txt

# Create working folder
RUN mkdir /DATA
WORKDIR /DATA

# Clean up
RUN rm -rf /var/cache/apk/*
