# docker-pycsw
A docker container for pycsw

# Installation
```
docker run -it -d -p 8012:8000 -v /var/data/pycsw:/var/data/pycsw -v /var/log/pycsw:/var/log/pycsw --name pycsw minhd/docker-pycsw
```

# Development
```
docker build -t pycsw .
docker run -p 8000:8000 pycsw
```