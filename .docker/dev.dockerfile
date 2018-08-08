FROM golang:latest

COPY ./src /go/src/app
WORKDIR /go/src/app

RUN go get -d -v ./...
RUN go build /go/src/app/main.go
RUN go get github.com/codegangsta/gin
RUN go install github.com/codegangsta/gin