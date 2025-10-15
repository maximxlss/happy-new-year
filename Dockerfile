FROM node:22.12.0-alpine

ENV NODE_ENV production

WORKDIR /app/

COPY server.js package.json package-lock.json index.html ./
COPY ./static ./static

RUN npm install

USER node

CMD ["npm", "start"]
