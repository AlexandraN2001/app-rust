# Step 1: Build the app in a Rust environment
FROM rust:1.64 as builder

WORKDIR /app

# Copy the project files into the container
COPY . .

# Build the project in release mode
RUN cargo build --release

# Step 2: Set up a minimal runtime environment to run the app
FROM debian:bullseye-slim

# Install required dependencies
RUN apt-get update && apt-get install -y \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy the compiled binary from the builder
COPY --from=builder /app/target/release/my_rust_web_app .

# Expose port 8080
EXPOSE 8080

# Run the application
CMD ["./my_rust_web_app"]
