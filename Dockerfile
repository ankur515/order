FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /target/OrderNewMS-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
EXPOSE 8400
ENV JAVA_OPTS=""
RUN sh -c "touch OrderNewMS-0.0.1-SNAPSHOT.jar"
ENTRYPOINT [ "java", "-jar", "OrderNewMS-0.0.1-SNAPSHOT.jar" ]