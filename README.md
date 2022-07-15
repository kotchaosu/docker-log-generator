# docker-log-generator

## Say what?

Docker image based on https://pypi.org/project/log-generator/ for mimicking any (depends on configured log format) service producing log messages.

## Building

```
$ docker build -t log-generator .
```

## Using

Using included `example-apache.yaml`:

```
$ docker run -d \
  -it \
  --name fake-apache \
  --mount type=bind,source="$(pwd)",target=/opt \
  log-generator:latest /opt/example-apache.yaml
f5044a1903a2ed285c61a12139838b35686b6c20d6e49c73760b2fbb0a759b73

$ docker logs -f f5044a1903a2ed285c61a12139838b35686b6c20d6e49c73760b2fbb0a759b73
243.161.76.176 - - [15/Jul/2022:09:29:43 +0000] "GET /auth HTTP/1.1" 503 4762
243.161.76.176 - - [15/Jul/2022:09:29:43 +0000] "GET /auth HTTP/1.1" 503 4762
180.103.137.196 - - [15/Jul/2022:09:29:43 +0000] "GET /events HTTP/1.1" 300 3371
180.103.137.196 - - [15/Jul/2022:09:29:43 +0000] "GET /events HTTP/1.1" 300 3371
[...]
```
