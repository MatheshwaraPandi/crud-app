# use an official Node.js as the base image
FROM node:23-alpine

# set the working directory in the container
WORKDIR /usr/src/app

# copy package.json and package-lock.json to the working directory
COPY package*.json ./

#Install dependencies
RUN npm install

# copy the rest of the application code to the working directory
COPY . .

# Expose the port on which your Node.js app runs
EXPOSE 3000

# command to run your Node.js application
CMD ["npm", "start"]
