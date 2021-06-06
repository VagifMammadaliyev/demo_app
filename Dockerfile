FROM python:3-alpine

ENV PYTHONUNBUFFERED 1

WORKDIR /app

RUN apk add g++ && apk add linux-headers

COPY Pipfile Pipfile
COPY Pipfile.lock Pipfile.lock

RUN \
    pip install --upgrade pip \
    && pip install pipenv \
    && pipenv install --system --deploy --ignore-pipfile --clear

COPY ./app .

CMD [ "uwsgi", "--http", ":80", "--wsgi-file", "main.py" ]