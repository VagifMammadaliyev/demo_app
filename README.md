# Demo app

A python app server over uwsgi that displays some variables like hostname and etc.

## Build

```sh
docker build -t demo_app:1 .
```

## Run

```sh
docker run -p 80:80 demo_app:1
```