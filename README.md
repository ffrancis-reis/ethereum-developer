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
5. You can also test in Remix IDE after deploying to a test network like [Rinkeby Test Network](https://rinkeby.etherscan.io/) and look at the transactions happening on it.

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

![image](https://user-images.githubusercontent.com/29313947/146117158-5462353f-1488-4508-bdc6-126e2b567070.png)

6. Test the application by updating the album details and see its changes on developer console:

![image](https://user-images.githubusercontent.com/29313947/146109435-d667cb40-f1fe-4f9e-801b-e2a62c83f9c2.png)

![image](https://user-images.githubusercontent.com/29313947/146109452-e2304aee-f649-46e1-b313-4f75b7044e06.png)

7. See that the contract don't let incoming changes if not contract owner (if you change **myAccountNumber** on the **.js** file to another address that didn't deployed the contract):

![image](https://user-images.githubusercontent.com/29313947/146111894-0d73c644-a9e8-4796-8133-47131c931dce.png)

8. At Remix IDE, deploy the contract on a test network (you will need a Metamask account):

![image](https://user-images.githubusercontent.com/29313947/146116014-80e03c84-6ff7-4e93-99e8-0c7828e5011d.png)

![image](https://user-images.githubusercontent.com/29313947/146116067-8cabd819-786c-4a36-9f9b-a50d7807fd66.png)

9. Test it by setting a new current album (at Remix IDE):

![image](https://user-images.githubusercontent.com/29313947/146116957-181eed17-7f9d-4572-80a1-a003bdbacf78.png)

![image](https://user-images.githubusercontent.com/29313947/146116641-00d7c99b-3cce-4495-89dd-1d4cac983d0b.png)

https://rinkeby.etherscan.io/address/0xca6542b455372f8bc63665cc3dbc0a6acc3f3871

![image](https://user-images.githubusercontent.com/29313947/146116773-f54055fd-7b38-4950-b69e-124466c65e6d.png)

### Output

Here is an example of the smart contract in the blockchain and the transactions on Rinkeby. You can see the contract ABI on **./abi.json**.

![image](https://user-images.githubusercontent.com/29313947/146114186-51367d0f-e88a-43b4-96b8-31acd69739dc.png)

![image](https://user-images.githubusercontent.com/29313947/146114204-664e40b9-02df-4fa7-9045-691a536d7106.png)

![image](https://user-images.githubusercontent.com/29313947/146115312-2043b2cb-3a08-4dd7-b3df-b730cd3338d5.png)

![image](https://user-images.githubusercontent.com/29313947/146115330-2b5faea5-9c24-474b-9299-b2e38d3b87ce.png)

![image](https://user-images.githubusercontent.com/29313947/146115372-534e0f3c-8630-4ba9-af83-6ca419681ca7.png)

https://rinkeby.etherscan.io/tx/0xc89a3a5d8fd62b5016c50328da8899e3da01e5893664381e6459f78275498ab2

![image](https://user-images.githubusercontent.com/29313947/146116327-3af3a473-9a87-428f-9279-e5517e1ff43f.png)
