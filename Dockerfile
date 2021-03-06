FROM ubuntu:latest

LABEL maintainer="lepota <timelexa@gmail.com>"

RUN apt-get -qq update && apt-get -qq dist-upgrade

RUN apt-get --no-install-recommends -y install \
        ca-certificates \
        mingw-w64       \
        make            \
        cmake           \
        cppcheck        \
        curl            \
    && rm -rf /var/lib/apt/lists/*

COPY mingw-toolchain.cmake /mingw-toolchain.cmake
COPY mingw-posix-toolchain.cmake /mingw-posix-toolchain.cmake
