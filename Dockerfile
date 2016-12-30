FROM openjdk:jre-alpine

MAINTAINER Mathias Rhein <mathias@rhein.io>

RUN apk add --no-cache curl
RUN curl -OL https://s3.amazonaws.com/Minecraft.Download/versions/1.11.2/minecraft_server.1.11.2.jar

WORKDIR /data
VOLUME /data

EXPOSE 25565

CMD echo eula=true > /data/eula.txt && java -jar /minecraft_server.1.11.2.jar
