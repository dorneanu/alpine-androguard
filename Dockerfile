FROM alpine:latest

MAINTAINER Victor Dorneanu <no-spam ATT dornea DOT nu>
USER root

RUN apk --update --no-cache \
    add python3 py3-pip openssl git gcc python3-dev \
    bash musl-dev g++ libxml2-dev libxml2 libxslt libxslt-dev

# Add files
ADD ./requirements.txt /tmp/requirements.txt
ADD ./run_jupyter.sh /run_jupyter.sh

# Python requirements
RUN pip3 install --upgrade pip
RUN pip3 install -r /tmp/requirements.txt

# Install python3 ipython kernel
RUN python3 -m pip install --upgrade ipykernel
RUN python3 -m ipykernel install
RUN ipython3 kernel install --name python3


# Create working folder
RUN mkdir /DATA
WORKDIR /DATA

# Clean up
RUN rm -rf /var/cache/apk/*

CMD ["bash", "/run_jupyter.sh"]
