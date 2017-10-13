#Docker File For The Change Of Heart Safar Vue On Rails App
# Ruby File uses Debian Jessie as the OS. 
FROM ruby:2.4

#Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh

RUN bash nodesource_setup.sh

RUN apt-get install nodejs -y

#Update OS
RUN apt-get update -y && apt-get upgrade -y

#Install Yarn 
RUN npm install -g yarn 

#Expose the Port Needed For Sails
EXPOSE 3000

# Make An Application Folder
RUN mkdir /words_vue

# Make An App Directory For Safar
WORKDIR /words_vue

# Copy Local Directory Into Container
COPY . .

#Install Packages
RUN bundle install

#Init Webpacker for Vue
RUN bundle exec rails webpacker:install:vue

#Use Webpack to bundle JS
RUN ./bin/webpack

#Command To Start Rails Application
CMD rails server