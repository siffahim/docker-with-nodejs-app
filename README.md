#Node.js + Express

This repository provides the setup for creating a backend for a application using Node.js and Express.

## Table of Contents
- [Project Setup](#project-setup)
- [Backend Setup](#backend-setup)
  - [Step 1: Create the Backend Folder](#step-1-create-the-backend-folder)
  - [Step 2: Create `index.js`](#step-2-create-indexjs)
  - [Step 3: Dockerfile for Backend](#step-3-dockerfile-for-backend)
- [Running the Application](#running-the-application)

## Project Setup

Ensure you have Node.js installed on your machine. This setup uses Express and CORS.

### 1. Create the Backend Folder

Run the following commands to create and initialize the backend folder:

```bash
mkdir -p Full-stack-app/backend
cd Full-stack-app/backend
npm init -y
npm install express cors
