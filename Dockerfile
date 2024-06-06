FROM ubuntu 

RUN yum-get update 
RUN yum install -y python3
RUN yum install -y python3-pip
RUN pip install flask 

COPY app.py /opt/app.py
#RUN cd /opt
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
