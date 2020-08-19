FROM ubuntu:16.04
RUN apt-get update && apt-get install -y python python-pip
RUN mkdir /opt/app
COPY src/main.py /opt/app/
COPY requirements.txt /opt/app
RUN pip install -r /opt/app/requirements.txt
RUN pip install flask

#COPY docker-entrypoint.sh /

#ENTRYPOINT "/docker-entrypoint.sh"

