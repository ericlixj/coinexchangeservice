FROM openjdk:8
MAINTAINER Eric Li <ericli.xj@gmail.com>

ADD ./target/admin-api.jar /app/
CMD ["java", "-Xmx200m", "-jar", "/app/admin-api.jar"]

EXPOSE 6010