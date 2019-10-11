FROM node:11

#Define environment variables
ARG ENV
ENV ENV=${ENV}

ARG PORT
ENV PORT=${PORT}

#Create application directory
WORKDIR /usr/src/app

#Copy dependency file and run installation
COPY package*.json ./
RUN npm install
COPY . .

#Expose relevant ports
EXPOSE ${PORT}

CMD [ "npm", "start" ]