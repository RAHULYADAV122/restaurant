# Use Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy dependency files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your app
COPY . .

# Expose port used by React (default: 3000)
EXPOSE 3000

# Start the React app
CMD ["npm", "start"]
