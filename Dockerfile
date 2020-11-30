# Use the official image as a parent image.
ARG OS
ARG VER
FROM $OS:$VER
ARG OS
ARG VER
RUN echo FROM ${OS}:${VER} 1>&2

MAINTAINER Innovations Anonymous <InnovAnon-Inc@protonmail.com>
LABEL version="1.0"                                                     \
      maintainer="Innovations Anonymous <InnovAnon-Inc@protonmail.com>" \
      about="Dockerized Virtual Temple"                                 \
      org.label-schema.build-date=$BUILD_DATE                           \
      org.label-schema.license="PDL (Public Domain License)"            \
      org.label-schema.name="Dockerized Virtual Temple"                 \
      org.label-schema.url="InnovAnon-Inc.github.io/VirtualTemple"      \
      org.label-schema.vcs-ref=$VCS_REF                                 \
      org.label-schema.vcs-type="Git"                                   \
      org.label-schema.vcs-url="https://github.com/InnovAnon-Inc/VirtualTemple"

# disable interactivity
ARG  DEBIAN_FRONTEND=noninteractive
ENV  DEBIAN_FRONTEND=${DEBIAN_FRONTEND}

# localization
ARG  TZ=UTC
ENV  TZ=${TZ}
ARG  LANG=C.UTF-8
ENV  LANG=${LANG}
ARG  LC_ALL=C.UTF-8
ENV  LC_ALL=${LC_ALL}

RUN npm update -g
RUN npm install -g --production virtual-temple
WORKDIR /usr/local/lib/node_modules/virtual-temple
RUN ls -ltra /usr/local/lib/node_modules/virtual-temple
EXPOSE 8443
ENTRYPOINT ["/usr/bin/env", "npm", "start", "--host", "0.0.0.0"]

