# Hardhat Node Docker Image

This is a [Hardhat](https://hardhat.org) test network node Docker image.

## Run

The latest image is pushed to Docker Hub, so you can just run:

```sh
docker run -d kwildb/hardhat:latest
```

The node will be running in the background. To run it interactively, with logs
in the console, replace `-d` with `-it`.

Test:

```sh
$ curl http://127.0.0.1:8545/ --header 'Content-Type: application/json' --data '{"jsonrpc":"2.0","method":"eth_blockNumber","params":[],"id":19}'
{"jsonrpc":"2.0","id":19,"result":"0x0"}
```

## Build

To rebuild the image:

```sh
docker build -t kwildb/hardhat .
```
