FROM maven:3.6.1-jdk-17 AS maven-build
COPY . .
RUN mvn package
FROM eclipse-temurin:17-jdk-jammy
CMD ["java", "-jar", "File_management_System-0.0.1-SNAPSHOT.jar"]
