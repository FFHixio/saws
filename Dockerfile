FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    groff \
    python-pip \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN pip install saws

ENTRYPOINT ["saws"]
