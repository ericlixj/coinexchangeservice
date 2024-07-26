FROM openjdk:8
MAINTAINER Eric Li <ericli.xj@gmail.com>

ADD ./target/cloud.jar /app/
CMD ["java", "-Xmx200m", "-jar", "/app/cloud.jar"]

EXPOSE 7000