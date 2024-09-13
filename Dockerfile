FROM golang:1.23.0-alpine3.19

# Create a directory for our files
RUN mkdir /app
ADD . /app

WORKDIR /app

EXPOSE 8080

RUN go build -o main

# Set our default command
CMD ["/app/main"]