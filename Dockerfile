FROM ubuntu 

RUN apt-git update 
RUN apt install -y python3
RUN apt install -y python3-pip
RUN apt install flask 

COPY app.py /opt/app.py
#RUN cd /opt
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
