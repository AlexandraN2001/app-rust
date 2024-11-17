FROM rust:1.70 as builder
WORKDIR /usr/src/myapp
COPY Cargo.toml Cargo.lock ./
RUN cargo build --release && rm -f target/release/deps/myapp*
COPY . .
RUN cargo build --release
FROM debian:bullseye-slim
COPY --from=builder /usr/src/myapp/target/release/my_rust_web_app /usr/local/bin/my_rust_web_app
EXPOSE 8080
CMD ["my_rust_web_app"]
