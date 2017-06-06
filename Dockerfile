## JDK 8 docker image
## Based on ubuntu 16.04 base image

FROM ubuntu:16.04
MAINTAINER Ekansh Gupta

## Update the os and install JDK 8

RUN apt-get update -y && \
	apt-get install openjdk-8-jdk -y

## Set java home

ENV JAVA_HOME 	/usr/lib/jvm/java-1.8.0-openjdk-amd64

## Clean apt-get

RUN apt-get clean all
