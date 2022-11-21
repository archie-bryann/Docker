# Pull the node image for the initial layer
FROM node:14-alpine

RUN npm install -g nodemon

# define the dir for our app
WORKDIR /app

# We put this line here to tell the next line `npm install` what exactly to install, especially when a change is made
# This is done to avoid running the installations of a old file
COPY package.json .

# the dependencies {put before 'COPY . .' for it to be cached}
RUN npm install

# Copy source files 
# the first dot is the relative path i want to copy my source file from
# the path inside the image i want to copy my source files
# . instead of /app since we've created WORKDIR
# A CHANGE MADE to the files affects the copy layer and hence no cache is made initially
COPY . . 

# # the dependencies
# RUN npm install

EXPOSE 4000

# this is used to start app after the running instance of the image in the container
CMD [ "nodemon", "index.js" ]

# Run `docker build -t myapp .` to deploy DockerImage
