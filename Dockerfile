FROM ubuntu:latest

LABEL maintainer="lepota <timelexa@gmail.com>"

RUN apt-get -qq update && apt-get -qq dist-upgrade

RUN apt-get --no-install-recommends -y install \
        mingw-w64 \
        make \
        cmake \
        cppcheck

ENV CC x86_64-w64-mingw32-gcc
ENV CXX x86_64-w64-mingw32-g++
