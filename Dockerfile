# Use a smaller base image
FROM rust:slim AS builder
ENV  myapp calculator
# Set the working directory in the container
WORKDIR /usr/src/app

# Copy only the necessary files for dependency caching
COPY Cargo.toml Cargo.lock ./

# Build and cache the dependencies
RUN cargo fetch

# Copy the rest of the application files
COPY . .

# Build the application with optimized release flags
RUN cargo build --release

# Use a minimal base image for the runtime container
FROM debian:bullseye-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the built binary from the builder stage
COPY --from=builder /usr/src/app/target/release/$myapp .

# Run the binary when the container starts
CMD ["./$myapp"]
