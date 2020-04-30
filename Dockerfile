FROM node:14

ADD service.js ./
ADD package.json ./
ADD connection.json ./
ADD config ./
ADD oci_api_key.pem ./

RUN npm install

EXPOSE 8080

CMD [ "node", "service.js" ]
