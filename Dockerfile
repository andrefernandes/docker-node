# CentOS 7 com NodeJS

FROM andrefernandes/docker-devel-base

MAINTAINER Andre Fernandes

#RUN yum -y install npm --enablerepo=epel

ENV NODE_VERSION 0.10.31
ENV NODE_FILENAME node-v${NODE_VERSION}-linux-x64
ENV NODE_TGZ ${NODE_FILENAME}.tar.gz
ENV NODE_SRC /opt/src
RUN mkdir -p ${NODE_SRC} \
    && cd ${NODE_SRC} \
    && wget http://nodejs.org/dist/v${NODE_VERSION}/${NODE_TGZ} -q \
    && tar -xzf ${NODE_TGZ} \
    && ln -s ${NODE_FILENAME} nodejs \
    && ln -s ${NODE_SRC}/nodejs/bin/* /usr/local/bin \
    && rm ${NODE_TGZ}

EXPOSE 8008

