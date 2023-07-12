FROM node:latest
MAINTAINER Christian Lück <christian@lueck.tv>

RUN npm install -g json-server-auth

WORKDIR /data
VOLUME /data

EXPOSE 80
ADD run.sh /run.sh
ENTRYPOINT ["bash", "/run.sh"]
CMD []
