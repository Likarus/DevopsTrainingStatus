#------------------------------------
# Control-M/Gitlab Agent docker container
#------------------------------------

FROM centos:7 

ARG CTMHOST

# install basic packages
RUN yum -y install wget && \
RUN yum -y install openssl && \
    yum -y install wget && \
    yum -y install unzip && \
    yum -y install sudo && \
    yum -y install net-tools && \ 
    yum -y install which && \
    yum -y install maven && \
    yum -y install java-1.8.0-openjdk && \
    cd /root && \
    curl --silent --location https://rpm.nodesource.com/setup_6.x | bash - && \
    yum -y install nodejs && \
    node -v && \
    npm -v && 
#Set time zone 
RUN echo "America/Mexico_City" > /etc/timezone

# add antonio user and root to sudoers list
RUN useradd -d /home/antonio -p antonio -m antonio \
    && echo 'root ALL=(ALL) ALL' >> /etc/sudoers \
    && echo 'controlm ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

EXPOSE 7000-8000

# Download Gitlab-runner binary
RUN cd /usr/local/bin && \
    wget curl -LJO https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-386 && \
    mv gitlab-runner-linux-386 gitlab-runner && \
    chmod +x gitlab-runner && \
    useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash && \
    mkdir /etc/gitlab-runner
   
RUN gitlab-runner run

# Infinite loop
CMD tail -f /dev/null
