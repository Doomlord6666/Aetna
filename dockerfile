FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 
ENV PATH=$PATH:$JAVA_HOME/bin
WORKDIR /tmp
COPY target/ .
ENTRYPOINT ["java","-jar","/tmp/bsafe-0.0.1-SNAPSHOT.jar"]
