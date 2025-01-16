FROM openjdk:17-jdk

ARG JAR_FILE=build/libs/eurekaservice-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java", "-jar", "-Dconfig.server=${CONFIG_SERVER}", "-Dhostname=${HOSTNAME}", "-Dprotocol=${PROTOCOL}", "app.jar"]

EXPOSE 3998