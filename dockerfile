FROM python:3.9-slim

RUN mkdir -p /home/app

COPY . /home/app

WORKDIR /home/app

RUN pip3 install -r requirements.txt

WORKDIR /home/app

EXPOSE 5000

CMD ["python", "server.py"]
