FROM python:2.7-slim
MAINTAINER Stephen Price <stephen@stp5.net>

RUN apt-get update \
  && apt-get install -y build-essential \
    libffi-dev \
    libssl-dev \
  && rm -rf /var/lib/apt/lists/*

VOLUME /wheels
ENTRYPOINT ["pip", "wheel", "--wheel-dir=/wheels"]
