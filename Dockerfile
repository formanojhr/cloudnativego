# This assume the golang binary is prebuilt
FROM alpine:3.5
#
COPY ./Cloud-Native-Go /app/Cloud-Native-Go
RUN chmod +x /app/Cloud-Native-Go
#
ENV PORT 8080
EXPOSE 8080
#
ENTRYPOINT /app/Cloud-Native-Go
#FROM golang:1.7.4-alpine
MAINTAINER Manoj Ramakrishnan
#
#ENV SOURCES /go/src/Cloud-Native-Go
#
##COPY . ${SOURCES} this did not work
#
## ADD current directory to the
#ADD . /go/src/Cloud-Native-Go
#RUN go get Cloud-Native-Go
#RUN cd ${SOURCES} && CGO_ENABLED=0 go install
#
#ENV PORT 8080
#
#EXPOSE 8080
#
#ENTRYPOINT Cloud-Native-Go

#ENTRYPOINT /app/Cloud-Native-Go

