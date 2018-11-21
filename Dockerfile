# Dockerfile

# Node:carbon 'Carbon 8.x' was still the recommended for LTS deployment until 30.10.2018
# Node:Dubnium 'Dubnium 10.x' is the current LTS since then. Because most of the middleware is for Carbon,
# we will use it. See 'https://github.com/nodejs/Release#release-schedule'
FROM node:carbon

WORKDIR /home/node/app
RUN npm install express-generator -g \
    && express express-locallibrary-tutorial --view=pug \
    && cd express-locallibrary-tutorial \
    && npm install \
    && npm install --save-de nodemon


COPY package.json express-locallibrary-tutorial/

EXPOSE 3000

WORKDIR /home/node/app/express-locallibrary-tutorial	
CMD ["npm","run","devstart"]




