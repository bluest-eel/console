FROM node:12.13.0

RUN mkdir /app && apt-get update -y
COPY app/package.json /app/
WORKDIR /app
RUN npm install vue@2.6.6
# RUN npm install  grpc@1.20.0
# COPY app/* /app/
# RUN npm install

# CMD ["npm", "run", "serve"]
CMD "bash"
