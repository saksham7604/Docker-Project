# Use the official Node.js image as a base
FROM node
# Set the working directory inside the container
WORKDIR /app
# Copy package.json and package-lock.json to the container
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the rest of your application files into the container
COPY . .
# Expose the port your app runs on (optional, if your app listens on a port)
#EXPOSE 5173
# Run the npm dev script when the contaner starts
CMD ["npm", "run", "dev"]
