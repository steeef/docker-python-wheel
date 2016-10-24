FROM python:2.7-slim
MAINTAINER Stephen Price <stephen@stp5.net>

RUN apt-get update \
  && apt-get install -y build-essential \
  && rm -rf /var/lib/apt/lists/*

VOLUME /wheels
VOLUME /src
WORKDIR /src
ENTRYPOINT ["/usr/bin/pip", "--wheels-dir=/wheels", "-r", "requirements.txt"]
