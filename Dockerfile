###### QNIBng image
FROM qnib/terminal
MAINTAINER "Christian Kniep <christian@qnib.org>"

RUN yum install -y redis
ADD etc/supervisord.d/redis.ini /etc/supervisord.d/
RUN yum install -y python-pip
RUN pip install redis
ADD etc/consul.d/check_redis.json /etc/consul.d/
ADD etc/redis.conf /etc/
VOLUME ["/var/lib/redis/"]
EXPOSE 6379
