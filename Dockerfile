FROM ubuntu 

RUN apt-get update 
RUN apt install -y python3
Run apt install -y python3-pip
Run pip install flask -y

COPY app.py /opt/app.py
#RUN cd /opt
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
