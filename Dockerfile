#FROM java:8
#FROM ubuntu:14.04
FROM chadmoon/trusty-jdk7:latest

MAINTAINER cmoon@kenzan.com

WORKDIR /opt

RUN echo "deb http://gluecon.s3-website-us-east-1.amazonaws.com trusty main" | tee /etc/apt/sources.list.d/spinnaker.list > /dev/null

RUN apt-get update

RUN apt-get install -y wget

RUN apt-get install --force-yes -y hello-karyon-rxnetty

CMD ["java","-jar","/opt/hello-karyon-rxnetty/hello-karyon-rxnetty-all-0.1.0.jar"]