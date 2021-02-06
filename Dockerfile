FROM python:3.6.1-alpine

WORKDIR /flask-test

ADD . /flask-test

RUN pip install -r requirements.txt

CMD ["python","app.py"]
