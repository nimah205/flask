FROM python:3.6.1-alpine

RUN mkdir /application
WORKDIR /application

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

ENV PYTHONUNBUFFERED 1

EXPOSE 5000
STOPSIGNAL SIGINT

ENTRYPOINT ["python"]
CMD ["app.py"]
