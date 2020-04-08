FROM centos:latest
RUN yum install -y wget
RUN yum install -y zip
RUN cd /tmp  
RUN wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm -O /tmp/jdk-8u131-linux-x64.rpm
run rpm -i /tmp/jdk*linux-x64.rpm
ENV JAVA_HOME=/usr/java/latest
RUN cd /tmp && wget https://sourceforge.net/projects/j-trac/files/jtrac/2.1.0/jtrac-2.1.0.zip
RUN yum install -y unzip
RUN cd /opt && unzip /tmp/jtrac*.zip -d /opt
RUN cd /opt/jtrac && mv start.bat start.sh && chmod +x start.sh
RUN rm /tmp/jdk*linux-x64.rpm /tmp/jtrac*.zip
WORKDIR /opt/jtrac
CMD ./start.sh
