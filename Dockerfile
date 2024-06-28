FROM alpine:3.19

RUN apk update && \
    apk upgrade --no-cache --purge && \
    apk add --no-cache npm nodejs && \
    rm -vrf /var/cache/apk/* 

WORKDIR /app

COPY ["package.json", "./"]

RUN npm install

COPY ./src .

COPY tsconfig.json .

RUN npm run build

EXPOSE 3000

CMD [ "npm", "start" ]
