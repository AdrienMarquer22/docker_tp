FROM python:3-alpine

RUN apk update 


COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY main.py app.py
EXPOSE 5000
ENTRYPOINT [ "flask" , "run","--host=0.0.0.0"]
