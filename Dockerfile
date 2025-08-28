FROM eclipse-temurin:21-jdk
EXPOSE 8080
ADD target/jenkinspracticeproject.jar jenkinspracticeproject.jar
ENTRYPOINT ["java","-jar","/jenkinspracticeproject.jar"]