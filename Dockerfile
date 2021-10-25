FROM ubuntu:20.04

ADD sources.list /etc/apt/sources.list

RUN useradd --user-group --system --create-home --no-log-init epics \
    && adduser epics sudo \
    && echo 'epics:epics' | chpasswd
WORKDIR /home/epics

RUN apt update \
    && apt install sudo \
    && apt install -y build-essential \
    && apt install -y wget

USER epics

RUN wget https://epics.anl.gov/download/base/base-7.0.6.1.tar.gz \
    && tar -xavf base-7.0.6.1.tar.gz \
    && ln -s base-7.0.6.1 base \
    && cd base \
    && make -j`nproc`

ENV EPICS_BASE=/home/epics/base
ENV PATH=${PATH}:${EPICS_BASE}/bin/linux-x86_64

# fdslfjdsa