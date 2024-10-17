FROM adoptopenjdk:11
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} ms-config.jar
EXPOSE ${SLA_CONFIG_PORT} 
ENTRYPOINT [ "java", "-jar", "/ms-config.jar" ]