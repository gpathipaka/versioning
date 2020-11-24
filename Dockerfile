#FROM openjdk:8-jdk-alpine
FROM openjdk:11-jre-slim-buster
EXPOSE 8080
ARG JAR_FILE=build/libs/versioning-0.0.1-SNAPSHOT.jar
COPY start_app.sh start_app.sh
COPY ${JAR_FILE} server.jar
#ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
#CMD["./start_app.sh"]