FROM ubuntu:latest

#setup MongoDB repository
RUN sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
RUN echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list

RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

RUN apt-get update

RUN apt install -y build-essential tcl git nodejs mongodb-org 
