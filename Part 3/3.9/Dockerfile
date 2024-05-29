FROM golang:1.16-alpine as build-stage

WORKDIR /usr/src/app

ENV REQUEST_ORIGIN=http://localhost:5000

COPY . . 

ENV CGO_ENABLED=0

RUN go build

FROM scratch

EXPOSE 8080

WORKDIR /app

COPY --from=build-stage /usr/src/app/server /app

ENTRYPOINT [ "./server" ]
