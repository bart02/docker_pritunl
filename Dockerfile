FROM ubuntu:bionic
WORKDIR /root

COPY ./install.sh .
RUN bash install.sh
RUN apt-get update && apt-get -y install iptables pritunl mongodb-server

COPY ./start.sh ./setup.sh ./config.py ./
RUN bash setup.sh

CMD ["bash", "start.sh"]
