FROM centos:latest

WORKDIR /opt/

RUN curl https://www.centos.org/keys/RPM-GPG-KEY-CentOS-7 --output RPM-GPG-KEY-CentOS-7
RUN rpm --import RPM-GPG-KEY-CentOS-7
RUN yum update -y
RUN yum -y install java-1.8.0-openjdk wget
RUN yum clean all

RUN wget http://download.sonatype.com/nexus/3/nexus-3.14.0-04-unix.tar.gz
RUN tar xvf nexus-3.14.0-04-unix.tar.gz

ENTRYPOINT [ "nexus-3.14.0-04-unix/bin/nexus", "start" ]
