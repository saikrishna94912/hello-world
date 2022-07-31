FROM openjdk:8-jdk-alpine
USER 0
RUN microdnf install shadow-utils
RUN ["/usr/bin/sh", "-c", "useradd -u 101 -d /opt/qsuser qsuser"]
RUN microdnf remove shadow-utils
USER 101
ENV APP_HOME /opt/qsuser
WORKDIR $APP_HOME
COPY ./target/spring-boot-helloworld-0.0.1-SNAPSHOT.jar spring-boot-helloworld-0.0.1-SNAPSHOT.jar
EXPOSE 80
