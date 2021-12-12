# Udacity Blockchain Capstone

The capstone will build upon the knowledge you have gained in the course in order to build a decentralized housing product. 

## Install

`npm install`

Move to contracts directory and compile contracts:

```
cd eth-contracts
truffle compile
``` 

## Tests

Start ganache-cli and run tests:
```
npm run ganache-cli
npm run test
```

## Contracts on Rinkeby
```
Starting migrations...
======================
> Network name:    'rinkeby'
> Network id:      4
> Block gas limit: 30000000 (0x1c9c380)


1_initial_migration.js
======================

   Deploying 'Migrations'
   ----------------------
   > transaction hash:    0xae05ca8757b7bf1c7088538e01f1dfca3bb4130483e29028d75c9e9f6c791331
   > Blocks: 1            Seconds: 16
   > contract address:    0x6a7a1cD181887051CC56DCe26106843D07332888
   > block number:        9793409
   > block timestamp:     1639185558
   > account:             0xe1b7876D3a8A9cA23C0fDef856719efDbb1b087B
   > balance:             0.685572228996040087
   > gas used:            226537 (0x374e9)
   > gas price:           30 gwei
   > value sent:          0 ETH
   > total cost:          0.00679611 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.00679611 ETH


2_deploy_contracts.js
=====================

   Deploying 'Verifier'
   --------------------
   > transaction hash:    0x6204fbf903c10af7e7f5a62abdbad384542f1ae50a0fb0965265584282e10aac
   > Blocks: 1            Seconds: 12
   > contract address:    0xB833284787BF3ed672DBEA87a0b4f093539EF077
   > block number:        9793411
   > block timestamp:     1639185588
   > account:             0xe1b7876D3a8A9cA23C0fDef856719efDbb1b087B
   > balance:             0.654864918996040087
   > gas used:            977814 (0xeeb96)
   > gas price:           30 gwei
   > value sent:          0 ETH
   > total cost:          0.02933442 ETH


   Deploying 'SolnSquareVerifier'
   ------------------------------
   > transaction hash:    0x934170ef7daf33709532b184b831e421f1901541c232a414072be50c30f83370
   > Blocks: 0            Seconds: 8
   > contract address:    0x41874354B630d71247d158db68b0aE6DE34B4433
   > block number:        9793412
   > block timestamp:     1639185603
   > account:             0xe1b7876D3a8A9cA23C0fDef856719efDbb1b087B
   > balance:             0.544301838996040087
   > gas used:            3685436 (0x383c3c)
   > gas price:           30 gwei
   > value sent:          0 ETH
   > total cost:          0.11056308 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:           0.1398975 ETH


Summary
=======
> Total deployments:   3
> Final cost:          0.14669361 ETH

```


## Opensea Storefront Link
[https://testnets.opensea.io/assets/house-title-nft](https://testnets.opensea.io/assets/house-title-nft)


# Project Resources

* [Remix - Solidity IDE](https://remix.ethereum.org/)
* [Visual Studio Code](https://code.visualstudio.com/)
* [Truffle Framework](https://truffleframework.com/)
* [Ganache - One Click Blockchain](https://truffleframework.com/ganache)
* [Open Zeppelin ](https://openzeppelin.org/)
* [Interactive zero knowledge 3-colorability demonstration](http://web.mit.edu/~ezyang/Public/graph/svg.html)
* [Docker](https://docs.docker.com/install/)
* [ZoKrates](https://github.com/Zokrates/ZoKrates)
