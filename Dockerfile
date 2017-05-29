FROM alpine:3.4
MAINTAINER Minh Duc Nguyen <dekarvn@gmail.com>

# install dependencies
WORKDIR /opt
RUN apk add --no-cache \
  build-base git python python-dev py-pip libxslt-dev libxml2-dev
RUN apk add --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted \
  geos

# pycsw source code checkout
RUN git clone https://github.com/minhd/pycsw.git

# install pycsw
WORKDIR /opt/pycsw
RUN pip install -e .
RUN pip install -r requirements-standalone.txt

# prepare log and data directory
RUN mkdir -p /var/log/pycsw
RUN mkdir -p /var/data/pycsw

COPY default.cfg default.cfg

RUN pycsw-admin.py -c setup_db -f default.cfg

EXPOSE 8000
CMD ["python", "/opt/pycsw/pycsw/wsgi.py"]