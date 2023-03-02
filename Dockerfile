FROM ubuntu:22.04

RUN apt-get update      \
 && DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
        bzip2               \
        ca-certificates     \
        wget                \
 && apt-get clean           \
 && rm -rf /var/lib/apt/lists/*

# Download sdcc 4.2.0 release
RUN wget https://sourceforge.net/projects/sdcc/files/sdcc-linux-amd64/4.2.0/sdcc-4.2.0-amd64-unknown-linux2.5.tar.bz2/download --output-document=/tmp/sdcc.tar.bz2

# Extract, install, cleanup
RUN tar -xvf /tmp/sdcc.tar.bz2 -C /tmp      \
 && cp -r /tmp/sdcc-*/bin /usr/local        \
 && cp -r /tmp/sdcc-*/share /usr/local      \
 && rm -r /tmp/sdcc-*                       \
 && rm /tmp/sdcc.tar.bz2
