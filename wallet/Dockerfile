FROM openjdk:8
MAINTAINER Eric Li <ericli.xj@gmail.com>

ADD ./target/ucenter-api.jar /app/
CMD ["java", "-Xmx200m", "-jar", "/app/ucenter-api.jar"]

EXPOSE 6001