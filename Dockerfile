FROM node:21

WORKDIR /usr/hardhat

COPY . .

# node_modules is in .dockerignore, so we npm install in build:
RUN npm install --save-dev hardhat

EXPOSE 8545

ENTRYPOINT [ "npx", "hardhat", "node" ]
