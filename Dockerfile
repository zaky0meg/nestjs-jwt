FROM node:16-alpine

# Set the working directory
WORKDIR /user/src/app

COPY . .
 
# RUN npm config set registry http://registry.npmjs.org/

RUN npm install

RUN npm run build
 
USER node

EXPOSE 3000
 
CMD ["npm", "run", "start:prod"]