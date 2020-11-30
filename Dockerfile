FROM node:latest

RUN npm update -g
RUN npm install -g --production virtual-temple
WORKDIR /usr/local/lib/node_modules/virtual-temple
RUN ls -ltra /usr/local/lib/node_modules/virtual-temple
EXPOSE 8443
ENTRYPOINT ["/usr/bin/env", "npm", "start", "--host", "0.0.0.0"]

