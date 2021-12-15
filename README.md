# Ethereum Development Basics

### Introduction

A simple blockchain project to show the basics of smart contracts and Ethereum development. The **Album.sol** is a simple smart contract that demonstrate a descentralized, permanent ledger to keep track of albums that any device would play and therefore being a trusted source that allow calculation of royalty payments.

**Important**: The project was made with the versions below, but the contracts use different versions of the Solidity compiler. I suggest compiling and deploying the contracts in Remix IDE.

- Truffle v5.4.7 (core: 5.4.7)
- Solidity v0.7.0 (solc-js)
- Node v16.13.0
- Web3.js v1.6.1

**Important**: The project didn't use any external **libraries** worth mentioning and also didn't use **IPFS** to host the frontend part decentralized as well.

### Getting Started

1. Clone this repository.
2. Take a look at the smart contracts made at [Remix](https://remix.ethereum.org/), a browser-based IDE to develop [Ethereum](https://ethereum.org/en/) smart contracts. Ethereum is a decentralized platform that runs smart contracts.
3. Install the dependencies with [NodeJS](https://nodejs.org/en/) and NPM.
4. Test the application by updating the album details.
   <!-- making calls to the contract on the [Rinkeby Test Network](https://rinkeby.etherscan.io/). -->
   <!-- 5. Take a look at the transactions happening on the Rinkeby Test Network at [Etherscan](https://rinkeby.etherscan.io/) explorer. -->

### Dependencies

1. Create an account and install the [Metamask](https://metamask.io/) extension on your web browser. Also claim some ethers (ETH) from a [Faucet](https://faucet.dimensions.network/) to use for testing purposes.
2. Create an [Infura](https://infura.io/) account to publish the contracts into the [Rinkeby Test Network](https://rinkeby.etherscan.io/).
3. Install [Truffle](https://www.trufflesuite.com/truffle) CLI. Truffle is the most popular development framework for Ethereum.
4. Install [Ganache](https://www.trufflesuite.com/ganache). Ganache is part of the Truffle suite that you can use to run a personal Ethereum blockchain.

**Important**: You will need your personal passphrase from your Ethereum account to publish into the Rinkeby Test Network.

### Instructions

1. By testing the **Album.sol** smart contract on Remix you can compile and deploy it:

![image](https://user-images.githubusercontent.com/29313947/146108076-e3d65714-e13f-4d5f-8722-ef95bea20ee4.png)

![image](https://user-images.githubusercontent.com/29313947/146108165-d9621a60-48bd-4d2d-9495-880df09fba56.png)

![image](https://user-images.githubusercontent.com/29313947/146108206-cd3eb4b3-7817-45ef-8173-56ccf67b57df.png)

2. After configuring your Metamask and Infura account, and getting some ether, you can see your balance by running the commands below:

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

![image](https://user-images.githubusercontent.com/29313947/146108401-3b2691d5-bf4b-42e7-8dd4-7d0c1dcd1c3b.png)

4. Deploy the contract into Ganache by connecting Remix IDE with your localhost:

![image](https://user-images.githubusercontent.com/29313947/146108925-c16e8515-8000-43be-b473-e2958c4fe0b8.png)

![image](https://user-images.githubusercontent.com/29313947/146108807-66881e48-6ba9-47f4-ac65-652145d4c9f8.png)

![image](https://user-images.githubusercontent.com/29313947/146108836-1fe2860f-3848-41cc-b190-932f765616f1.png)

5. Update the **index.html** file with both addresses from Ganache and with the contract ABI from Remix (on the compiler tab). **Remember to use your addresses**.

![image](https://user-images.githubusercontent.com/29313947/146109041-665a6fea-52e8-49cd-bda1-1036ee91f47b.png)

![image](https://user-images.githubusercontent.com/29313947/146109191-7bc0be71-c27d-4973-a563-9490d65af428.png)

6. Test the application by updating the album details and see its changes on developer console:

![image](https://user-images.githubusercontent.com/29313947/146109435-d667cb40-f1fe-4f9e-801b-e2a62c83f9c2.png)

![image](https://user-images.githubusercontent.com/29313947/146109452-e2304aee-f649-46e1-b313-4f75b7044e06.png)

### Output

Here is an example of the smart contract in the blockchain and the transactions on Rinkeby. You can see the contract ABI on **./abi.json**.

![image](https://user-images.githubusercontent.com/29313947/146108448-d2f493f3-4e6a-40ae-8448-89fe4398499a.png)

![image](https://user-images.githubusercontent.com/29313947/146108494-5e8d72c0-56a8-4ce9-97ba-cbd76df11b3b.png)
