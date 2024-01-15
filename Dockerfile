FROM maven:3.6.1-jdk-17 AS maven-build
ARG JAR_FILE=target/*.jar
WORKDIR /opt/app
COPY ${JAR_FILE} app.jar
EXPOSE 8085
ENTRYPOINT ["java","-jar","app.jar"]
