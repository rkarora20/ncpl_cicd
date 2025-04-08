# Use a lightweight Node.js base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy only the package files first (better for caching)
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the app files
COPY . .

# Expose the app's port (change this if your app uses a different port)
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]

