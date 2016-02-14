###### QNIBng image
FROM qnib/terminal

RUN dnf install -y redis python-pip && \
    pip install redis
ADD etc/supervisord.d/redis.ini /etc/supervisord.d/
ADD etc/consul.d/redis.json /etc/consul.d/
ADD etc/redis.conf /etc/
VOLUME ["/var/lib/redis/"]
