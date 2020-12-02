FROM node:latest as builder

RUN npm update  -g --production                         && \
    npm install -g --production node-gyp                && \
    npm install -g --production          virtual-temple && \
    test -d  /usr/local/lib/node_modules/virtual-temple && \
    mkdir -v /usr/local/lib/node_modules/virtual-temple/ssl

FROM node:current-alpine

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

# localization
ARG  TZ=UTC
ENV  TZ=${TZ}
ARG  LANG=C.UTF-8
ENV  LANG=${LANG}
ARG  LC_ALL=C.UTF-8
ENV  LC_ALL=${LC_ALL}

COPY --chown=node --from=builder /usr/local/lib/node_modules/ /usr/local/lib/node_modules/

USER node
WORKDIR /usr/local/lib/node_modules/virtual-temple
VOLUME  /usr/local/lib/node_modules/virtual-temple/ssl

ENV NODE_ENV production
EXPOSE 31443
ENTRYPOINT ["/usr/bin/env", "npm", "start"]
#CMD ["--host", "0.0.0.0"]

