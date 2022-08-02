FROM maven:3-jdk-11
RUN apt-get update
#     RUN apt-get install -y --allow-downgrades msopenjdk-11=11.0.11+9-1
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]