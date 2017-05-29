# docker-pycsw
A docker container for pycsw

# Installation
```
docker run -it -d \n
     -p 8012:8000 \n
     -v /var/data/pycsw:/var/data/pycsw  \n
     -v /var/log/pycsw:/var/log/pycsw \n
     minhd/docker-pycsw
```

# Development
```
docker build -t pycsw .
docker run -p 8000:8000 pycsw
```