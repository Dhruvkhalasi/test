# Use official Node.js image
FROM node:22

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install --production

# Copy the rest of the application
COPY . .

# Expose port 8080
EXPOSE 8080

# Start the app
CMD ["node", "server.js"]
