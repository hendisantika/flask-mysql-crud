FROM ubuntu:18.04

MAINTAINER Hendi Santika "hendisantika@yahoo.co.id"

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirement.txt /app/requirement.txt

EXPOSE 5000

WORKDIR /app

RUN pip install -r requirement.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]