FROM registry.access.redhat.com/ubi9/openjdk-17@sha256:42a91d780eb209ff5f58cb16d01bc677edb6fe4165da39f62a1c40c11abd851c

MAINTAINER Shanna Chan “shchan@redhat.com”

EXPOSE 8080
ENV JAVA_OPTIONS '-Xmx256m'
COPY app.jar /app.jar
USER root
WORKDIR /

ENTRYPOINT exec java $JAVA_OPTIONS -jar app.jar

CMD ["start"]
