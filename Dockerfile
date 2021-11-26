FROM golang:1.17

RUN apt-get update && apt-get install -y gcc-arm-linux-gnueabihf

ENV CC=arm-linux-gnueabihf-gcc
ENV GOOS=linux
ENV GOARCH=arm
ENV GOARM=7
ENV CGO_ENABLED=1

# Add a user
RUN groupadd -g 1000 appuser
RUN useradd -m -u 1000 -g 1000 appuser
USER appuser
