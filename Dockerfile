FROM ubuntu:16.04

WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN apt-get update -y && \
    apt-get install python -y && \
    apt-get install --upgrade python-pip -y 

RUN apt-get install -y python-pyglet python3-opengl zlib1g-dev libjpeg-dev patchelf \
        cmake swig libboost-all-dev libsdl2-dev libosmesa6-dev xvfb ffmpeg

RUN pip install --trusted-host pypi.python.org -r requirements.txt
RUN pip install gym[atari]