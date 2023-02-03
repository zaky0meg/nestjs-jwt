FROM node:16-alpine

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
RUN npm ci

# Copy the rest of the application files
COPY . .

# Build the application
RUN npm run build


# Expose the port that the application runs on
EXPOSE 3000

# Start the application
CMD [ "npm" "start" ]