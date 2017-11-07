FROM ubuntu:14.04

ADD . .
RUN echo Y | ./install.sh

ENV DISPLAY :99
CMD Xvfb $DISPLAY -screen 0 1366x768x16 2>&1 >/dev/null & \
    python demo.py

