FROM centos:6.6

RUN yum update -y &&  \
    yum install -y \
      yum-plugin-ovl \
      build-essential \
      git \
      libxml2 \
      libxslt2 \
      libxml2-devel \
      libxslt-devel \
      mysql \
      mysql-devel \
      sudo \
      tar \
      which \
      java-1.6.0-openjdk && \
     
    yum clean all

RUN curl -sL https://rpm.nodesource.com/setup | bash -

RUN yum install -y nodejs && \
  yum clean all