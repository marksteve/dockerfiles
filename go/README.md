# docker-go

Docker image that can run Go applications

## Build
```sh
$ sudo docker build -rm -t go .
```

## `go get`
```sh
$ sudo docker run -t -v $GOPATH:/go -w /go/src/package/path go get
```

## `go run`
```sh
$ sudo docker run -d -v $GOPATH:/go -w /go/src/package/path go  # go run main.go
$ sudo docker run -d -v $GOPATH:/go -w /go/src/package/path go run app/app.go  # go run app/app.go
```
