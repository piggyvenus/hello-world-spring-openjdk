FROM quay.io/hummingbird/openjdk:21

MAINTAINER Shanna Chan “shchan@redhat.com”

EXPOSE 8080
ENV JAVA_OPTIONS '-Xmx256m'
COPY app.jar /app.jar
USER root
WORKDIR /

ENTRYPOINT exec java $JAVA_OPTIONS -jar app.jar

CMD ["start"]
