FROM golang:alpine

COPY ./src /go/src/app
WORKDIR /go/src/app

RUN go get -d -v ./...
RUN go build /go/src/app/main.go