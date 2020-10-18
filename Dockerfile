FROM node:14-slim

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY bin/ ./bin/
COPY models/ ./models/
COPY routes/ ./routes/
COPY services/ ./services/
COPY app.js ./app.js

EXPOSE 7890

CMD ["npm", "run", "start"]
