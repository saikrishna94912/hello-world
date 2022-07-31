FROM openjdk:8-jdk-alpine
ENV APP_HOME /opt/
WORKDIR $APP_HOME
COPY ./target/hello-world-0.0.1-SNAPSHOT.jar hello-world-0.0.1-SNAPSHOT.jar
EXPOSE 80
