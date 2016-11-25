FROM amazonlinux:latest

MAINTAINER Loris Strozzini <lstrozzini@gmail.com>

RUN yum update -y
RUN yum install hostname tar puppet-server -y
ENV HOSTNAME puppet
ADD etc/puppet/autosign.conf /etc/puppet/autosign.conf
CMD puppet master --verbose --no-daemonize
EXPOSE 8140
