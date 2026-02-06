FROM registry.access.redhat.com/ubi9/openjdk-17@1.24-2.1769595320

MAINTAINER Shanna Chan “shchan@redhat.com”

EXPOSE 8080
ENV JAVA_OPTIONS '-Xmx256m'
COPY app.jar /app.jar
USER root
WORKDIR /

ENTRYPOINT exec java $JAVA_OPTIONS -jar app.jar

CMD ["start"]
