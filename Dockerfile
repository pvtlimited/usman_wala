# Use the official Node.js image as the base image with Ubuntu OS
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose the port your Node.js application listens on (replace 3000 with your application's port if needed)
EXPOSE 3000

# Command to start your Node.js application (replace "start" with your application's actual startup command)
CMD ["npm", "start"]
