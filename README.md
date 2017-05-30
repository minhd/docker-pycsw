# docker-pycsw
A docker container for pycsw

# Installation

Quick start
```
docker run -it -d \
    -p 8000:8000 \
    --name pycsw \
    minhd/docker-pycsw
```

Production use case. Configuration, data (sqlite3) and log are persistent
```
docker run -it -d \
    -p 8000:8000 \
    -v /my/pycsw/default.cfg:/opt/pycsw/default.cfg \
    -v /my/pycsw/data:/var/data/pycsw \
    -v /my/pycsw/log:/var/log/pycsw \
    --name pycsw \
    minhd/docker-pycsw
```

# Development
```
docker build -t pycsw .
docker run -p 8000:8000 pycsw
```