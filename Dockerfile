FROM rust:1.63 as develop-stage

WORKDIR /app
RUN cargo install cargo-watch
COPY . .

