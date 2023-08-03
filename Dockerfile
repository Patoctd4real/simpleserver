# Use the official Node.js image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /Users/HP/Desktop/simpleserver

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the application code into the container
COPY . .

# Expose the port on which the Express app will run (must match the port in app.js)
EXPOSE 3000

# Command to run your Node.js app when the container starts
CMD ["npm", "server.js"]
