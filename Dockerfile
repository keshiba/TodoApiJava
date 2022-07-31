#image to build from
FROM openjdk:18-jdk-alpine

#Create useer as its advisable not run the commands as root user
RUN addgroup -S spring && adduser -S springuser -G spring
USER springuser

#create working dir springuser
WORKDIR /home/springuser

#copy file(s) from host to image
ARG JAR_FILE=target/todolist-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

#configures main process executable command
ENTRYPOINT ["java", "-Dserver.port=80", "-Xmx512m", "-Xms256m", "-jar", "app.jar"]
