# Use a base image of Go
FROM golang:1.18-alpine

# Create a directory for the application
WORKDIR /app

# Copy all Go files (including go.mod and go.sum) to the container
COPY . .

# Compile the Go file
RUN go build -o hello

# Define the command that will run the program
CMD ["./hello"]
