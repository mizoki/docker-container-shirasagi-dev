FROM centos:7.4.1708
MAINTAINER Hiroto MIZOKI <h.mizoki@gmail.com>

RUN yum update -y && yum install -y dovecot postfix && yum clean all

RUN groupadd -g 1000 mailuser && useradd -u 1000 -g mailuser -s /sbin/login mailuser

RUN mkdir /var/spool/virtual && chown -R mailuser:mailuser /var/spool/virtual

COPY ./start.sh /root/start.sh
