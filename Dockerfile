FROM openjdk:17-jdk-slim
COPY target/backend-1.0.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
