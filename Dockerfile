FROM shippable/minv2
MAINTAINER Carlos Alexandro Becker <caarlos0@gmail.com>

RUN sudo apt-get remove -y maven
RUN wget -O /tmp/maven.tar.gz http://mirror.nbtelecom.com.br/apache/maven/maven-3/3.2.5/binaries/apache-maven-3.2.5-bin.tar.gz && \
  tar xzvf /tmp/maven.tar.gz -C /opt && \
  ln -s /opt/apache-maven-3.2.5/bin/mvn /usr/bin/mvn && \
  rm -rf /tmp/maven.tar.gz

ENV M2_HOME /opt/apache-maven-3.2.5
ENV PATH $M2_HOME/bin:$PATH
