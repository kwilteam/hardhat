#!/usr/bin/env bash

git clone -b input2 https://github.com/jchappelow/hardhat.git hardhat-src
pushd hardhat-src
git pull
pnpm i
pnpm run build
cd packages/hardhat-core
# npm link
pnpm pack
ls *.tgz
popd

# npm link hardhat
mv hardhat-src/packages/hardhat-core/hardhat*.tgz .
