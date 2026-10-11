
# Uses node version 16 as base image
FROM node:16

# Sets a working directory
WORKDIR /app

# Copies package.json and install dependencies
COPY package.json ./

# Installs project dependencies
RUN npm install

# Copies all of the application files
COPY . .

# Exposes port 3000
EXPOSE 3000

# Starts the application with the command npm start
CMD ["npm", "start"]