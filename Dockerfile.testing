FROM ubuntu:16.04

MAINTAINER AiBlocks Dev <dev@aiblocks.io>

ENV AIBLOCKS_CORE_VERSION 15.1.0-41
ENV MILLENNIUM_VERSION 1.12.0-92

EXPOSE 5432
EXPOSE 8000
EXPOSE 6060
EXPOSE 11625
EXPOSE 11626

ADD dependencies /
RUN ["chmod", "+x", "dependencies"]
RUN /dependencies

ADD install /
RUN ["chmod", "+x", "install"]
RUN /install

RUN ["mkdir", "-p", "/opt/aiblocks"]
RUN ["touch", "/opt/aiblocks/.docker-ephemeral"]

RUN ["ln", "-s", "/opt/aiblocks", "/aiblocks"]
RUN ["ln", "-s", "/opt/aiblocks/core/etc/aiblocks-core.cfg", "/aiblocks-core.cfg"]
RUN ["ln", "-s", "/opt/aiblocks/millennium/etc/millennium.env", "/millennium.env"]
ADD common /opt/aiblocks-default/common
ADD pubnet /opt/aiblocks-default/pubnet
ADD testnet /opt/aiblocks-default/testnet
ADD standalone /opt/aiblocks-default/standalone


ADD start /
RUN ["chmod", "+x", "start"]

ENTRYPOINT ["/start"]
