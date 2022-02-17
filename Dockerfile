# docker image build -t json-server-img:1.0 .
# docker container run --name json-server-cnt -d -p 3000:3000 -v $(pwd):/usr/src/app json-server-img:1.0
FROM node:16-alpine
EXPOSE 3000
RUN npm install json-server -g
RUN mkdir /usr/src/app -p && chown -Rf node:node /usr/src/app 
WORKDIR /usr/src/app
COPY --chown=node:node . .
USER node
CMD ["json-server", "--host", "0.0.0.0", "--port", "3000", "--watch", "db.json"]
