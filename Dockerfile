FROM node:10

WORKDIR /src

COPY package*.json ./
RUN yarn install \
  --prefer-offline \
  --frozen-lockfile\
  --non-interractive \
  --production=false

COPY . .

CMD ["yarn", "run", "start"]
