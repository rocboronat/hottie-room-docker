FROM openjdk
MAINTAINER Roc Boronat <roc@fewlaps.com>
EXPOSE 8080
RUN mkdir hottie
WORKDIR hottie
RUN wget https://github.com/rocboronat/hottie-room-server/releases/download/v1.0.0/hottieroom-1.0.0.jar
RUN chmod +x hottieroom-1.0.0.jar
ENTRYPOINT ["/usr/bin/java", "-jar", "hottieroom-1.0.0.jar"]
