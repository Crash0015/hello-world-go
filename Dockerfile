# Use a Go base image
FROM golang:1.18-alpine

# Set up a working directory
WORKDIR /app

# Copy the Go file into the container
COPY main.go .

# Compile the Go file
RUN go build -o hello

# Define the command that will run the program
CMD ["./hello"]
