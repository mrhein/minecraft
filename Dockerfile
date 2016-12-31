FROM openjdk:jre-alpine

MAINTAINER Mathias Rhein <mathias@rhein.io>

ARG version=1.11.2
ADD https://s3.amazonaws.com/Minecraft.Download/versions/$version/minecraft_server.$version.jar /

WORKDIR /data
VOLUME /data

EXPOSE 25565

CMD echo eula=true > /data/eula.txt && java -jar /minecraft_server.$version.jar
