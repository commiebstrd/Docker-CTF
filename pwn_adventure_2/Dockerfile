FROM ubuntu:12.04
MAINTAINER Spenser Reinhardt
ENV DEBIAN_FRONTEND noninteractive

ADD http://ghostintheshellcode.com/2014-final/pwnadventure2_server.tgz /root/
ADD ./start.sh /root/pwnadventure2_server/start.sh

RUN apt-get update -y && apt-get upgrade -y && apt-get install ia32-libs mono-devel python-netifaces -y
RUN chmod +x /root/pwnadventure2_server/start.sh

WORKDIR /root/pwnadventure2_server/
ENTRYPOINT /bin/bash
CMD ["/root/pwnadventure2_server/start.sh"]
#build with - docker build -t pwnadv2-image"
#run with - docker run -p 4200 -p 50000-65635 --name="pwnadv2" pwnadv2-image