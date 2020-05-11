# specifies which image the docker container is based on
FROM node:12.13-alpine
# specifies the directory (CONTEXT) that our commands are executed in
WORKDIR /usr/src/app
# adds a dependency layer
RUN npm install -g @nestjs/cli
# copy the script into our working directory
COPY ./generate-proj.sh .
# change the file settings so the script is executable
RUN chmod +x generate-proj.sh
