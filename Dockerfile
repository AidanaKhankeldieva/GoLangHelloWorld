# Use the official Go image as the base image
FROM golang:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the Go module files to the working directory
COPY go.mod ./

# Download and install the Go dependencies
RUN go mod download

COPY *.go ./

# Build the Go application
RUN go build -o /godocker

EXPOSE 8080

# Set the command to run the binary
CMD ["/godocker"]



