FROM node:21

WORKDIR /usr/hardhat

COPY . .

# node_modules is in .dockerignore, so we npm install in build:
# RUN npm install --save-dev hardhat
##RUN yarn install
#RUN yarn add hardhat
RUN yarn && yarn cache clean

EXPOSE 8545

ENTRYPOINT [ "yarn", "exec", "hardhat", "node" ]
