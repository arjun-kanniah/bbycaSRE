FROM node:11

#Define environment variables
ARG ENV
ENV ENV=${ENV}

ARG PORT
ENV PORT=${PORT}

# Create app directory
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE ${PORT}

CMD [ "npm", "start" ]