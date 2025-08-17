# Use an officaial node.js runtime as a parent image
FROM node:22-alpine

# Set the working dir in container
WORKDIR /app

# Copy package.json and package-lock.json to container
COPY package*.json .

# Install dependencies
RUN npm install

# Copy rest of the app code
COPY . .

# Expose the port that the app runs on
EXPOSE 5000

# Define command to run the app
CMD ["node", "./src/server.js"]
