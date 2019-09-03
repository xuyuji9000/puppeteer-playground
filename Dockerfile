FROM buildkite/puppeteer:v1.15.0

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

CMD ["node", "example.js"]
