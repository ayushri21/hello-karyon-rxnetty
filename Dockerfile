FROM ubuntu:trusty

MAINTAINER cmoon@kenzan.com

WORKDIR /opt

RUN echo "deb http://gluecon.s3-website-us-east-1.amazonaws.com trusty main" | sudo tee /etc/apt/sources.list.d/spinnaker.list > /dev/null

RUN apt-get update

RUN apt-get install -y curl

RUN apt-get install --force-yes -y hello-karyon-rxnetty

CMD ["java","-jar","/opt/hello-karyon-rxnetty/hello-karyon-rxnetty-all-0.1.0.jar"]