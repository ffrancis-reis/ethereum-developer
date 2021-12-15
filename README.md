# Ethereum Development Basics

### Introduction

A simple blockchain project to show the basics of smart contracts and Ethereum development. The **Album.sol** us a simple smart contract that demonstrate a descentralized, permanent ledger to keep track of albums that any device would play and therefore being a trusted source that allow calculation of royalty payments.

**Important**: The project was made with the versions below, but the contracts use different versions of the Solidity compiler. I suggest the compile and deploy fo the contracts in Remix IDE.

- Truffle v5.4.7 (core: 5.4.7)
- Solidity v0.7.0 (solc-js)
- Node v16.13.0
- Web3.js v1.6.1

**Important**: The project didn't use any external **libraries** worth mentioning and also didn't use **IPFS** to host the frontend part decentralized as well.

### Getting Started

1. Clone this repository.
2. Take a look at the smart contracts made at [Remix](https://remix.ethereum.org/), a browser-based IDE to develop [Ethereum](https://ethereum.org/en/) smart contracts. Ethereum is a decentralized platform that runs smart contracts.
3. Install the dependencies with [NodeJS](https://nodejs.org/en/) and NPM.
4. Test the application making calls to the contract on the [Rinkeby Test Network](https://rinkeby.etherscan.io/).
5. Take a look at the transactions happening on the Rinkeby Test Network at [Etherscan](https://rinkeby.etherscan.io/) explorer.

### Dependencies

1. Create an account and install the [Metamask](https://metamask.io/) extension on your web browser. Also claim some ethers (ETH) from a [Faucet](https://faucet.dimensions.network/) to use for testing purposes.
2. Create an [Infura](https://infura.io/) account to publish the contracts into the [Rinkeby Test Network](https://rinkeby.etherscan.io/).
3. Install [Truffle](https://www.trufflesuite.com/truffle) CLI. Truffle is the most popular development framework for Ethereum.
4. Install [Ganache](https://www.trufflesuite.com/ganache). Ganache is part of the Truffle suite that you can use to run a personal Ethereum blockchain.

**Important**: You will need your personal passphrase from your Ethereum account to publish into the Rinkeby Test Network.

### Instructions

1. By testing the **Album.sol** smart contract on Remix you can compile and deploy it:

2. After configuring your Metamask and Infura account, and getting some ether, you can see your balance by running the commands below:

```powershell
  npm i
```

```powershell
  let infuraProjectId = '6e...'
  let metamaskWallet = '0x...'
  let Web3 = require('web3')
  let web3 = new Web3(new Web3.providers.HttpProvider('https://rinkeby.infura.io/v3/' + infuraProjectId))
  web3.eth.getBalance(metamaskWallet).then(balance => console.log(balance))
```

3. You can also run the comand below using the **balance.js** file (remember to configure the enviromental variables):

```powershell
  node balance.js
```

### Output

Here is an example of the smart contract in the blockchain and the transactions on Rinkeby. You can see the contract ABI on **./abi.json**.
