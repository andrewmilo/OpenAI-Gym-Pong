FROM ubuntu:16.04

WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN apt-get update -y && \
    apt-get install python -y && \
    apt-get install --upgrade python-pip -y && \
    apt-get update

# RUN pip install --trusted-host pypi.python.org -r requirements.txt