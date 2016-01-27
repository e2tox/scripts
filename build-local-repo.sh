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

TEAMCITY_VERSION=9.1.5

ANSIBLE_VERSION=1.9.4

MAVEN_VERSION=3.3.9

APACHEDS_VERSION=2.0.0-M21


## Download JDK
if [ ! -f "./jdk-${JDK_MAJOR}u${JDK_MINOR}-linux-x64.tar.gz" ]
then
	curl -jkSLH "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/${JDK_MAJOR}u${JDK_MINOR}-b${JDK_BUILD}/jdk-${JDK_MAJOR}u${JDK_MINOR}-linux-x64.tar.gz -o jdk-${JDK_MAJOR}u${JDK_MINOR}-linux-x64.tar.gz
fi

## Download SERVER-JRE
if [ ! -f "./server-jre-${SERVER_JRE_MAJOR}u${SERVER_JRE_MINOR}-linux-x64.tar.gz" ]
then
	curl -jkSLH "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/${SERVER_JRE_MAJOR}u${SERVER_JRE_MINOR}-b${SERVER_JRE_BUILD}/server-jre-${SERVER_JRE_MAJOR}u${SERVER_JRE_MINOR}-linux-x64.tar.gz -o server-jre-${SERVER_JRE_MAJOR}u${SERVER_JRE_MINOR}-linux-x64.tar.gz
fi

### Download TOMCAT
if [ ! -f "./apache-tomcat-${TOMCAT_VERSION}.tar.gz" ]
then
	curl -jkSL http://www.eu.apache.org/dist/tomcat/tomcat-${TOMCAT_MAJOR}/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz -o apache-tomcat-${TOMCAT_VERSION}.tar.gz
fi

### Download NODEJS
if [ ! -f "./node-v${NODEJS_VERSION}-linux-x64.tar.gz" ]
then
	curl -jSL https://nodejs.org/dist/v${NODEJS_VERSION}/node-v${NODEJS_VERSION}-linux-x64.tar.gz -o node-v${NODEJS_VERSION}-linux-x64.tar.gz
fi

### Download SBT
if [ ! -f "./sbt-${SBT_VERSION}.tgz" ]
then
	curl -jSL https://dl.bintray.com/sbt/native-packages/sbt/${SBT_VERSION}/sbt-${SBT_VERSION}.tgz -o sbt-${SBT_VERSION}.tgz
fi

### Download Docker
if [ ! -f "./docker-engine-selinux-${DOCKER_VERSION}-1.el7.centos.noarch.rpm" ]
then
	curl -jSL --ciphers ecdhe_rsa_aes_128_gcm_sha_256 https://yum.dockerproject.org/repo/main/centos/7/Packages/docker-engine-selinux-${DOCKER_VERSION}-1.el7.centos.noarch.rpm -o docker-engine-selinux-${DOCKER_VERSION}-1.el7.centos.noarch.rpm
fi

if [ ! -f "./docker-engine-${DOCKER_VERSION}-1.el7.centos.x86_64.rpm" ]
then
	curl -jSL --ciphers ecdhe_rsa_aes_128_gcm_sha_256 https://yum.dockerproject.org/repo/main/centos/7/Packages/docker-engine-${DOCKER_VERSION}-1.el7.centos.x86_64.rpm -o docker-engine-${DOCKER_VERSION}-1.el7.centos.x86_64.rpm
fi

### Download MONGODB
if [ ! -f "./mongodb-enterprise-shell-${MONGODB_VERSION}-1.el7.x86_64.rpm" ]
then
	curl -jSL https://repo.mongodb.com/yum/redhat/7Server/mongodb-enterprise/stable/x86_64/RPMS/mongodb-enterprise-shell-${MONGODB_VERSION}-1.el7.x86_64.rpm -o mongodb-enterprise-shell-${MONGODB_VERSION}-1.el7.x86_64.rpm
fi

if [ ! -f "./mongodb-enterprise-tools-${MONGODB_VERSION}-1.el7.x86_64.rpm" ]
then
	curl -jSL https://repo.mongodb.com/yum/redhat/7Server/mongodb-enterprise/stable/x86_64/RPMS/mongodb-enterprise-tools-${MONGODB_VERSION}-1.el7.x86_64.rpm -o mongodb-enterprise-tools-${MONGODB_VERSION}-1.el7.x86_64.rpm
fi

if [ ! -f "./mongodb-enterprise-server-${MONGODB_VERSION}-1.el7.x86_64.rpm" ]
then
	curl -jSL https://repo.mongodb.com/yum/redhat/7Server/mongodb-enterprise/stable/x86_64/RPMS/mongodb-enterprise-server-${MONGODB_VERSION}-1.el7.x86_64.rpm -o mongodb-enterprise-server-${MONGODB_VERSION}-1.el7.x86_64.rpm
fi

if [ ! -f "./mongodb-enterprise-mongos-${MONGODB_VERSION}-1.el7.x86_64.rpm" ]
then
	curl -jSL https://repo.mongodb.com/yum/redhat/7Server/mongodb-enterprise/stable/x86_64/RPMS/mongodb-enterprise-mongos-${MONGODB_VERSION}-1.el7.x86_64.rpm -o mongodb-enterprise-mongos-${MONGODB_VERSION}-1.el7.x86_64.rpm
fi

### Download TeamCity
if [ ! -f "./TeamCity-${TEAMCITY_VERSION}.tar.gz" ]
then
	curl -jSL https://download.jetbrains.com/teamcity/TeamCity-${TEAMCITY_VERSION}.tar.gz -o TeamCity-${TEAMCITY_VERSION}.tar.gz
fi

### Download Ansible
if [ ! -f "./ansible-${ANSIBLE_VERSION}-1.el7.noarch.rpm" ]
then
	curl -jSL https://dl.fedoraproject.org/pub/epel/7/x86_64/a/ansible-${ANSIBLE_VERSION}-1.el7.noarch.rpm -o ansible-${ANSIBLE_VERSION}-1.el7.noarch.rpm
fi

### Download Maven
if [ ! -f "./apache-maven-${MAVEN_VERSION}-bin.tar.gz" ]
then
	curl -jkSL http://www.us.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz -o apache-maven-${MAVEN_VERSION}-bin.tar.gz
fi


### Download Apacheds
if [ ! -f "./apacheds-${APACHEDS_VERSION}.tar.gz" ]
then
	curl -jkSL http://www.us.apache.org/dist//directory/apacheds/dist/${APACHEDS_VERSION}/apacheds-${APACHEDS_VERSION}.tar.gz -o apacheds-${APACHEDS_VERSION}.tar.gz
fi



