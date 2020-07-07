FROM iron/java:1.8
USER root
ADD target/eureka-server-ha-1.0.0.jar app.jar
ENTRYPOINT  ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]