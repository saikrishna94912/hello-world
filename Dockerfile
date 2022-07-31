FROM openjdk:8-jdk-alpine
ENV APP_HOME /opt/
WORKDIR $APP_HOME
COPY ./target/spring-boot-helloworld-0.0.1-SNAPSHOT.jar spring-boot-helloworld-0.0.1-SNAPSHOT.jar
EXPOSE 80
