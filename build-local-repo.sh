#!/bin/bash
set -x

JDK_MAJOR=7
JDK_MINOR=75
JDK_BUILD=13

SERVER_JRE_MAJOR=7
SERVER_JRE_MINOR=79
SERVER_JRE_BUILD=15

TOMCAT_MAJOR=8
TOMCAT_VERSION=${TOMCAT_MAJOR}.0.30

NODEJS_VERSION=5.5.0

SBT_VERSION=0.13.9

DOCKER_VERSION=1.9.1

MONGODB_VERSION=3.2.1


## Download JDK
curl -jkSLH "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/${JDK_MAJOR}u${JDK_MINOR}-b${JDK_BUILD}/jdk-${JDK_MAJOR}u${JDK_MINOR}-linux-x64.tar.gz -o jdk-${JDK_MAJOR}u${JDK_MINOR}-linux-x64.tar.gz

## Download SERVER-JRE
curl -jkSLH "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/${SERVER_JRE_MAJOR}u${SERVER_JRE_MINOR}-b${SERVER_JRE_BUILD}/server-jre-${SERVER_JRE_MAJOR}u${SERVER_JRE_MINOR}-linux-x64.tar.gz -o server-jre-${SERVER_JRE_MAJOR}u${SERVER_JRE_MINOR}-linux-x64.tar.gz

### Download TOMCAT
curl -jkSL http://www.eu.apache.org/dist/tomcat/tomcat-${TOMCAT_MAJOR}/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz -o apache-tomcat-${TOMCAT_VERSION}.tar.gz

### Download NODEJS
curl -jkSL https://nodejs.org/dist/v${NODEJS_VERSION}/node-v${NODEJS_VERSION}-linux-x64.tar.gz -o node-v${NODEJS_VERSION}-linux-x64.tar.gz

### Download SBT
curl -jkSL https://dl.bintray.com/sbt/native-packages/sbt/${SBT_VERSION}/sbt-${SBT_VERSION}.tgz -o sbt-${SBT_VERSION}.tgz

### Download Docker
curl -jkSL https://yum.dockerproject.org/repo/main/centos/7/Packages/docker-engine-selinux-${DOCKER_VERSION}-1.el7.centos.noarch.rpm -o docker-engine-selinux-${DOCKER_VERSION}-1.el7.centos.noarch.rpm
curl -jkSL https://yum.dockerproject.org/repo/main/centos/7/Packages/docker-engine-${DOCKER_VERSION}-1.el7.centos.x86_64.rpm -o docker-engine-${DOCKER_VERSION}-1.el7.centos.x86_64.rpm

### Download MONGODB
curl -jkSL https://repo.mongodb.com/yum/redhat/7Server/mongodb-enterprise/stable/x86_64/RPMS/mongodb-enterprise-shell-${MONGODB_VERSION}-1.el7.x86_64.rpm -o mongodb-enterprise-shell-${MONGODB_VERSION}-1.el7.x86_64.rpm
curl -jkSL https://repo.mongodb.com/yum/redhat/7Server/mongodb-enterprise/stable/x86_64/RPMS/mongodb-enterprise-tools-${MONGODB_VERSION}-1.el7.x86_64.rpm -o mongodb-enterprise-tools-${MONGODB_VERSION}-1.el7.x86_64.rpm
curl -jkSL https://repo.mongodb.com/yum/redhat/7Server/mongodb-enterprise/stable/x86_64/RPMS/mongodb-enterprise-server-${MONGODB_VERSION}-1.el7.x86_64.rpm -o mongodb-enterprise-server-${MONGODB_VERSION}-1.el7.x86_64.rpm
curl -jkSL https://repo.mongodb.com/yum/redhat/7Server/mongodb-enterprise/stable/x86_64/RPMS/mongodb-enterprise-mongos-${MONGODB_VERSION}-1.el7.x86_64.rpm -o mongodb-enterprise-mongos-${MONGODB_VERSION}-1.el7.x86_64.rpm



