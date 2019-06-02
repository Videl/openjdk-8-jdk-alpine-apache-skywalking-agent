# openjdk-8-jdk-alpine-apache-skywalking-agent

Hey guys, this is a Docker image to have OpenJDK 8 with the Apache Skywalking Agent. I use it to build apps that are monitored by Apache Skywalking.

You can check what happens with the build in the Dockerfile.
Apache Skywalking version: 6.1.0.
Link: http://skywalking.apache.org/

## Important
To use this image, be sure to replace the agent.config file. It's here: `/skywalking/agent/config/agent.config`

In your Dockerfile, you should have something looking like this:

```
COPY docker/dev.agent.config /skywalking/agent/config/agent.config
```


### Build info

## Build manually

Build with: `docker build -t videl/openjdk-8-jdk-alpine-apache-skywalking-agent .`
Push with: 
```
docker login
docker push videl/openjdk-8-jdk-alpine-apache-skywalking-agent
```

## Debug

You can open the image with: `docker run -it --rm videl/openjdk-8-jdk-alpine-apache-skywalking-agent:latest /bin/ash`

Will look like this:

```
/skywalking/agent # tree
.
├── activations
│   ├── apm-toolkit-log4j-1.x-activation-6.1.0.jar
│   ├── apm-toolkit-log4j-2.x-activation-6.1.0.jar
│   ├── apm-toolkit-logback-1.x-activation-6.1.0.jar
│   ├── apm-toolkit-opentracing-activation-6.1.0.jar
│   └── apm-toolkit-trace-activation-6.1.0.jar
├── config
│   └── agent.config
├── logs
├── optional-plugins
│   ├── apm-customize-enhance-plugin-6.1.0.jar
│   ├── apm-gson-2.x-plugin-6.1.0.jar
│   ├── apm-lettuce-5.x-plugin-6.1.0.jar
│   ├── apm-spring-annotation-plugin-6.1.0.jar
│   ├── apm-trace-ignore-plugin-6.1.0.jar
│   └── apm-zookeeper-3.4.x-plugin-6.1.0.jar
├── plugins
│   ├── apm-activemq-5.x-plugin-6.1.0.jar
│   ├── apm-canal-1.x-plugin-6.1.0.jar
│   ├── apm-dubbo-2.7.x-plugin-6.1.0.jar
│   ├── apm-dubbo-plugin-6.1.0.jar
│   ├── apm-elastic-job-2.x-plugin-6.1.0.jar
│   ├── apm-elasticsearch-5.x-plugin-6.1.0.jar
│   ├── apm-feign-default-http-9.x-plugin-6.1.0.jar
│   ├── apm-grpc-1.x-plugin-6.1.0.jar
│   ├── apm-h2-1.x-plugin-6.1.0.jar
│   ├── apm-httpClient-4.x-plugin-6.1.0.jar
│   ├── apm-httpasyncclient-4.x-plugin-6.1.0.jar
│   ├── apm-hystrix-1.x-plugin-6.1.0.jar
│   ├── apm-jdbc-commons-6.1.0.jar
│   ├── apm-jedis-2.x-plugin-6.1.0.jar
│   ├── apm-jetty-client-9.0-plugin-6.1.0.jar
│   ├── apm-jetty-client-9.x-plugin-6.1.0.jar
│   ├── apm-jetty-server-9.x-plugin-6.1.0.jar
│   ├── apm-kafka-v1-plugin-6.1.0.jar
│   ├── apm-mongodb-2.x-plugin-6.1.0.jar
│   ├── apm-mongodb-3.x-plugin-6.1.0.jar
│   ├── apm-mysql-5.x-plugin-6.1.0.jar
│   ├── apm-mysql-6.x-plugin-6.1.0.jar
│   ├── apm-mysql-8.x-plugin-6.1.0.jar
│   ├── apm-mysql-commons-6.1.0.jar
│   ├── apm-nutz-http-1.x-plugin-6.1.0.jar
│   ├── apm-nutz-mvc-annotation-1.x-plugin-6.1.0.jar
│   ├── apm-okhttp-3.x-plugin-6.1.0.jar
│   ├── apm-postgresql-8.x-plugin-6.1.0.jar
│   ├── apm-rabbitmq-5.x-plugin-6.1.0.jar
│   ├── apm-redisson-3.x-plugin-6.1.0.jar
│   ├── apm-resttemplate-4.3.x-plugin-6.1.0.jar
│   ├── apm-rocketmq-3.x-plugin-6.1.0.jar
│   ├── apm-rocketmq-4.x-plugin-6.1.0.jar
│   ├── apm-servicecomb-java-chassis-0.x-plugin-6.1.0.jar
│   ├── apm-servicecomb-java-chassis-1.x-plugin-6.1.0.jar
│   ├── apm-sharding-jdbc-1.5.x-plugin-6.1.0.jar
│   ├── apm-spring-cloud-feign-1.x-plugin-6.1.0.jar
│   ├── apm-spring-concurrent-util-4.x-plugin-6.1.0.jar
│   ├── apm-spring-core-patch-6.1.0.jar
│   ├── apm-springmvc-annotation-3.x-plugin-6.1.0.jar
│   ├── apm-springmvc-annotation-4.x-plugin-6.1.0.jar
│   ├── apm-springmvc-annotation-5.x-plugin-6.1.0.jar
│   ├── apm-springmvc-annotation-commons-6.1.0.jar
│   ├── apm-spymemcached-2.x-plugin-6.1.0.jar
│   ├── apm-struts2-2.x-plugin-6.1.0.jar
│   ├── apm-undertow-2.x-plugin-6.1.0.jar
│   ├── apm-vertx-core-3.x-plugin-6.1.0.jar
│   ├── apm-webflux-5.x-plugin-6.1.0.jar
│   ├── apm-xmemcached-2.x-plugin-6.1.0.jar
│   ├── dubbo-2.7.x-conflict-patch-6.1.0.jar
│   ├── dubbo-conflict-patch-6.1.0.jar
│   ├── motan-plugin-6.1.0.jar
│   ├── sofa-rpc-plugin-6.1.0.jar
│   ├── spring-commons-6.1.0.jar
│   └── tomcat-7.x-8.x-plugin-6.1.0.jar
└── skywalking-agent.jar

5 directories, 68 files
```
