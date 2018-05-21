FROM golang:latest

RUN go get github.com/codegangsta/gin
RUN go get github.com/kataras/iris

EXPOSE 8080