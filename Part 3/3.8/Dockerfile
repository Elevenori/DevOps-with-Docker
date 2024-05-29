FROM node:14-alpine as build-stage

WORKDIR /usr/src/app

ENV REACT_APP_BACKEND_URL=http://localhost:8080/

COPY . . 

RUN npm install && \
	npm run build && \
	npm install -g serve
	
FROM node:14-alpine

EXPOSE 5000

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/build/ /usr/src/app/build

RUN apk add --no-cache git && \
	npm install -g serve && \
	apk del git && \
	rm -rf /var/lib/apt/lists/*

CMD [ "serve", "-s", "-l", "5000", "build" ]
