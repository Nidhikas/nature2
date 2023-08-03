FROM nginx


MAINTAINER "nidhikashyap168@gmail.com"


RUN apt-get update && apt-get upgrade -y && apt-get -y install net-tools


RUN useradd -m -d /home/john -s /bin/bash john
WORKDIR /home/john
ADD target/nature2.war .
WORKDIR /


ENTRYPOINT service nginx start && bash
