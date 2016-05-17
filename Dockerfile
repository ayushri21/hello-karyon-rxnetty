FROM java:8

MAINTAINER cmoon@kenzan.com

COPY . /opt

WORKDIR /opt

RUN chmod +x gradlew

RUN ./gradlew clean fatJar

RUN mv build/libs/hello-karyon-rxnetty-all-0.1.0.jar /hello.jar

CMD ["java","-jar","/hello.jar"]