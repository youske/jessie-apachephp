FROM debian:jessie
MAINTAINER youske miyakoshi <youske@gmail.com>

LABEL Role="application"

ENV PACKAGE="bash wget apache2-mpm-prefork php5"

RUN apt-get update && apt-get upgrade && apt-get -y install ${PACKAGE}

CMD ["sh"]
