FROM ubuntu
MAINTAINER dean wang <wangjingxin1986@gmail.com>

RUN apt-get update

RUN apt-get install -y python3 
RUN apt-get install -y python3-pip
RUN apt-get install -y python-dev
RUN apt-get install -y python-numpy

RUN pip3 install airflow
RUN airflow initdb
CMD airflow webserver -p 8080

EXPOSE 8080
