# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json into the container
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application source code
COPY . .

# Expose port 3000
EXPOSE 3000

# Define the command to run your app using npm start
CMD ["npm", "start"]
