FROM python:3.12.8-alpine

RUN apk update && apk add --no-cache zsh git python3 py3-pip tzdata pkgconfig

RUN apk add --no-cache mysql-dev gcc musl-dev python3-dev libffi-dev openssl-dev

RUN ln -fs /usr/share/zoneinfo/America/Belem /etc/localtime
RUN echo "America/Belem" > /etc/timezone

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . .

EXPOSE 8000