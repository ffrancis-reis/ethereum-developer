const Web3 = require('web3')
const dotenv = require('dotenv')

dotenv.config()

let infuraProjectId = process.env.INFURA_PROJECT_ID
let metamaskWallet = process.env.METAMASK_WALLET

let web3 = new Web3(
  new Web3.providers.HttpProvider(
    'https://rinkeby.infura.io/v3/' + infuraProjectId
  )
)

web3.eth.getBalance(metamaskWallet).then(balance => console.log(balance))
