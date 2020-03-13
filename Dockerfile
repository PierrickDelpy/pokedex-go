FROM node:6-alpine

#copy all dev into src
COPY ./ /app

# RUN npm install
RUN cd /app && npm install

WORKDIR /app