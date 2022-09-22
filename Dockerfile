FROM node:12
# Create app director
COPY package*.json ./

RUN npm install
COPY . .
RUN npm http-server
CMD [ "npm", "start" ]