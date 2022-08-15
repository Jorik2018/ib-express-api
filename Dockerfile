FROM node:14

WORKDIR /usr/src/app

ENV NODE_ENV production

# Just copy the package.json...
COPY package*.json ./

# so we can cache this layer:
RUN npm install

COPY . .

EXPOSE 3000

# command to run on container start
CMD [ "node", "./bin/www" ]

#oc new-app https://github.com/Jorik2018/ib-express-api --name=ib-express-api --strategy=source