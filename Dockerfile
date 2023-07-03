FROM golang:alpine AS builder

COPY ./script .

RUN go build print.go

FROM scratch

WORKDIR /goApp

COPY --from=builder /go/print .

CMD [ "./print" ]