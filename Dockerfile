FROM eclipse-temurin:21-jdk-alpine
EXPOSE 8080
ADD target/jenkinspracticeproject.jar jenkinspracticeproject.jar
ENTRYPOINT ["java","-jar","/jenkinspracticeproject.jar"]