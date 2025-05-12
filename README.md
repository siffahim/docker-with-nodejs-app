# Docker + Node.js + Express

This repository provides the setup for creating a backend for an application using Node.js and Express.

## Table of Contents
- [Project Setup](#project-setup)
- [Backend Setup](#backend-setup)
  - [Step 1: Create the Backend Folder](#step-1-create-the-backend-folder)
  - [Step 2: Create `index.ts`](#step-2-create-indexjs)
  - [Step 3: Dockerfile for Backend](#step-3-dockerfile-for-backend)
- [Running the Application](#running-the-application)

## Project Setup

Ensure you have Node.js installed on your machine. This setup uses Express and CORS.

### 1. Create the Backend Folder
Run the following commands to create and initialize the backend folder:

```bash
mkdir -p applications/nodejs-backend
cd applications/nodejs-backend
npm init -y
npm install express cors
```

### Create server.ts
To initialize the server, create a server.ts file and use the following code:

```bash
import express, { Request, Response } from "express";
const app = express();
const port = 5000;

app.get("/", (req: Request, res: Response) => {
  res.send("<h1>Hello world from nodejs🚀</h1>");
});

app.listen(port, () => {
  console.log("Application running on port:5000");
});
```

### Dockerize the Backend
Create a Dockerfile to containerize your application. Use the following code:

```bash
# Use the official Node.js image from the Docker Hub
FROM node:22

# Create and set the working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app files
COPY . .

# Expose the port that your app will run on
EXPOSE 5000

# Start the server using ts-node-dev
CMD ["npm", "run", "start"]
```
### 4. Build Docker Image
After creating the Dockerfile, build the Docker image:

```bash
docker build -t docker-with-nodejs-app .
```

### 5. Run the Docker Container
Run the container using the image we just built:

```bash
docker run -d -p 5000:5000 --name backend-with-node 85fc68b5249e
```
#Optional(If you want to keep image to docker hub and run from the hub)

### 6. Optional: Push to Docker Hub
If you want to push your Docker image to Docker Hub for easy access, use the following commands:

```bash
docker tag docker-with-nodejs-app:latest siffahim/docker-with-nodejs-app

docker push siffahim/docker-with-nodejs-app
```

### 7. Run the Container from Docker Hub (Optional)
To run the Docker container from Docker Hub, use:

```bash
 docker run -d -p 5000:5000 --name nodejs-app siffahim/docker-with-nodejs-app
```
