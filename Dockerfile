FROM node:12.13-alpine
WORKDIR /usr/src/app
RUN npm install -g @nestjs/cli
COPY ./generate-proj.sh .
RUN chmod +x generate-proj.sh

