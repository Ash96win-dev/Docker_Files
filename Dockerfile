FROM ubuntu:latest
ENV MVN_VERSION 3.6

RUN apt-get update -y \
    && apt-get install -y git \
    && apt-get install -y openjdk-8-jdk \
    && apt-get install -y maven

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME

EXPOSE 80 443
# expose these ports on the docker virtual network
# you still need to use -p or -P to open/forward these ports on host