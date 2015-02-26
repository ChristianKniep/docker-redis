###### QNIBng image
FROM qnib/supervisor
MAINTAINER "Christian Kniep <christian@qnib.org>"

RUN yum install -y redis
ADD etc/supervisord.d/redis.ini /etc/supervisord.d/
RUN yum install -y python-pip
RUN pip install redis
EXPOSE 6379
