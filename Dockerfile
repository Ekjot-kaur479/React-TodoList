# Use the official Node.js image as a base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose port 3000 for the React app
EXPOSE 3000

# Start the React app
CMD ["npm", "start"]
