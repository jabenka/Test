FROM ubuntu:latest
FROM openjdk:21-jdk-slim
LABEL authors="fartd"

VOLUME /tmp

ARG JAR_FILE=target/test-0.0.1-SNAPSHOT.jar

ADD ${JAR_FILE} app.jar

COPY src/main/resources/db/changelog /db/changelog

ENTRYPOINT ["java","-jar","/app.jar"]