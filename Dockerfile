FROM circleci/python:3.6.1

RUN sudo pip install --upgrade pip
RUN sudo pip install awscli

RUN sudo apt-get update

RUN \
  sudo apt-get install -y openjdk-7-jre && \
  sudo rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN sudo apt-get install -y build-essential

RUN sudo npm i -g serverless

RUN sudo pip install dependency-check