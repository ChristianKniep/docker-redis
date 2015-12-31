###### QNIBng image
FROM qnib/terminal
MAINTAINER "Christian Kniep <christian@qnib.org>"

RUN yum install -y redis python-pip
ADD etc/supervisord.d/redis.ini /etc/supervisord.d/
RUN pip install redis
ADD etc/consul.d/redis.json /etc/consul.d/
ADD etc/redis.conf /etc/
VOLUME ["/var/lib/redis/"]
EXPOSE 6379
