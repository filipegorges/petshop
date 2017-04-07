# Official Node image
FROM node:latest

# Define where the application will live inside the image
ENV APP_HOME /app

# Create the application folder
RUN mkdir -p $APP_HOME

# Set the workind directory inside the image
WORKDIR $APP_HOME

# Install dependencies
RUN npm install

RUN npm install -g @angular/cli
RUN npm install --save bootstrap