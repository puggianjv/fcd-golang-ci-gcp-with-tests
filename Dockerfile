FROM golang:1.15.2-alpine as builder
WORKDIR /go/src/app
COPY . .
RUN go build -o sum ./main/main.go

FROM scratch
COPY --from=builder /go/src/app/ /
CMD ["/sum"]