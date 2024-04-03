/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.24",
  networks: {
    hardhat: {
      chainId: 5,
      hardfork: "shanghai",
      gasPrice: 2000000000,
      blockGasLimit: 30000000,
      mining: {
        auto: true,
      },
      accounts: {
        mnemonic: "test test test test test test test test test test test junk",
        path: "m/44'/60'/0'",
        initialIndex: 0,
        count: 20,
        passphrase: "",
      },
      loggingEnabled: true
    }
  }
};
