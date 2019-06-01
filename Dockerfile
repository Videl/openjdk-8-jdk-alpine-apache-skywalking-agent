FROM openjdk:8-jdk-alpine

RUN apk --no-cache add curl
RUN mkdir -p /skywalking
RUN curl https://www-eu.apache.org/dist/skywalking/6.1.0/apache-skywalking-apm-6.1.0.tar.gz | tar -xvz 
RUN cp -r apache-skywalking-apm-bin/agent /skywalking/agent
