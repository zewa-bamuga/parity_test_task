FROM node:18.18-alpine

EXPOSE 5173

WORKDIR /app

COPY ./frontend/package.json ./frontend/package-lock.json ./

RUN npm install

COPY ./frontend/ ./

ENV NODE_ENV=development

CMD ["npm", "run", "dev"]
