FROM rabbitmq:3.7.14

MAINTAINER varghese varghesepoyyali@gmail.com 

RUN rabbitmq-plugins enable rabbitmq_management

ADD init.sh /init.sh
RUN chmod +x /init.sh

EXPOSE 5672 15672

ENTRYPOINT ["rabbitmq-server"]

