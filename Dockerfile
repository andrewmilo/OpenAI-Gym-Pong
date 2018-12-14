FROM ubuntu:16.04

# Copy the current directory contents into the container at /app
COPY . /app

RUN apt-get update -y && \
    apt-get install python -y && \
    apt-get install gym && \
    apt-get install tensorflow