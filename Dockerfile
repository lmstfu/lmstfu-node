FROM node:6-alpine
ENV NODE_ENV production
WORKDIR /usr/src/app
COPY ["package.json", "npm-shrinkwrap.json*", "./"]
RUN npm install --production && mv node_modules ../
COPY . .
EXPOSE 5470
CMD node index.js