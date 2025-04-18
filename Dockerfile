# Use the official Node.js 20 image as the base
FROM node:20

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (for better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the app (if you're using a framework like React, Next.js, etc.)
RUN npm run build

# Expose the port the app runs on (change if needed)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]

