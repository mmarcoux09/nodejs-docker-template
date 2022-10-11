FROM --platform=linux/amd64 node:16-alpine

COPY . .

RUN npm install -g serve
RUN npm install
RUN npm run build

CMD ["serve", "-s", "build"]