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