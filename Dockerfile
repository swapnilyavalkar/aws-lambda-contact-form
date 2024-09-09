# Use a basic node image
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy app files
COPY . .

# Install dependencies (if any)
RUN npm install

# Expose port 3000 for the web app
EXPOSE 3000

# Command to run the app
CMD ["npx", "http-server", "-p", "3000"]