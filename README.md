# app-rust Docker App 🌐
app-rust is a simple web application built with Rust. This app is containerized using Docker, enabling seamless deployment across various environments. 🚀
# Project Structure 📁
The project structure is organized as follows:
app-rust/
├── Dockerfile           # Dockerfile to build the container image

├── Cargo.toml           # Dependency file for the Rust project

├── Cargo.lock           # Dependency lock file

├── README.md            # Project documentation

├── src/                 # Source code for the Rust app

│   └── main.rs          # Main file with the application logic

# Requirements 📋
To run this project locally or with Docker, you will need:

# 1. Rust 🦀

Version 1.60 or higher.

# 2. Docker 🐳

To run the containerized app.

# 3. Git

To clone the repository.
# How to Clone and Run
# Step 1: Clone the Repository
Clone the repository using:

git clone https://github.com/alenac07/app-rust.git

cd app-rust
# Step 2: Build and Run Locally
To run the app locally:

1. Ensure you have Rust installed. If not, you can install it from the official Rust page.

2. Build the project using:

cargo build

3. Run the application:

cargo run

The app will be available at: 👉 http://localhost:8080

# Deploying with Docker 🚀

# Step 1: Build the Docker Image

To build the Docker image, use the following command:

docker build -t hirust .

# Step 2: Tag the Image
Once the image is built, tag it for Docker Hub:

docker tag hirust alenac07/hirust:latest

# Step 3: Push the Image to Docker Hub
Push the image to Docker Hub using:

docker push alenac07/hirust

# Step 4: Run the Docker Image
To run the container, use the following command:

docker run -d -p 8080:8080 alenac07/hirust:latest

# Step 5: Access the Application
Open your browser and navigate to: 👉 http://localhost:8080

You will see your Rust application running.

# Docker Hub 📦
The Dockerized version of this project is available on Docker Hub: 👉 Docker Hub: https://hub.docker.com/r/alenac07/hirust   

# Notes 📝
This project demonstrates how to containerize a simple web app built with Rust.

You can modify the app by editing the src/main.rs file to add new routes or features.

Ideal for developers exploring Docker and Rust-based web applications.

