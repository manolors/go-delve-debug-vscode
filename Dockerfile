FROM golang:1.15

RUN go get github.com/go-delve/delve/cmd/dlv

RUN mkdir /app
WORKDIR /app

COPY . .
EXPOSE ${PORT}
