FROM openjdk:8-jdk-alpine

RUN mkdir -p /skywalking && curl -SL https://www-eu.apache.org/dist/skywalking/6.1.0/apache-skywalking-apm-6.1.0.tar.gz | tar -xJC /skywalking
