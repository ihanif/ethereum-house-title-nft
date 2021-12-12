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

Start ganache-cli in one terminal and run tests in another terminal:
```
ganache-cli
truffle test
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


## Contract ABI
```
{
  "contractName": "SolnSquareVerifier",
  "abi": [
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "verifierContractAddress",
          "type": "address"
        }
      ],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "constructor"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "address",
          "name": "owner",
          "type": "address"
        },
        {
          "indexed": true,
          "internalType": "address",
          "name": "approved",
          "type": "address"
        },
        {
          "indexed": true,
          "internalType": "uint256",
          "name": "tokenId",
          "type": "uint256"
        }
      ],
      "name": "Approval",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "address",
          "name": "owner",
          "type": "address"
        },
        {
          "indexed": true,
          "internalType": "address",
          "name": "operator",
          "type": "address"
        },
        {
          "indexed": false,
          "internalType": "bool",
          "name": "approved",
          "type": "bool"
        }
      ],
      "name": "ApprovalForAll",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "address",
          "name": "oldOwner",
          "type": "address"
        },
        {
          "indexed": true,
          "internalType": "address",
          "name": "newOwner",
          "type": "address"
        }
      ],
      "name": "OwnershipTransfered",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "address",
          "name": "triggeringAddress",
          "type": "address"
        }
      ],
      "name": "Paused",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "address",
          "name": "to",
          "type": "address"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "index",
          "type": "uint256"
        }
      ],
      "name": "SolutionAdded",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "address",
          "name": "from",
          "type": "address"
        },
        {
          "indexed": true,
          "internalType": "address",
          "name": "to",
          "type": "address"
        },
        {
          "indexed": true,
          "internalType": "uint256",
          "name": "tokenId",
          "type": "uint256"
        }
      ],
      "name": "Transfer",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "address",
          "name": "triggeringAddress",
          "type": "address"
        }
      ],
      "name": "Unpaused",
      "type": "event"
    },
    {
      "constant": false,
      "inputs": [
        {
          "internalType": "bytes32",
          "name": "_myid",
          "type": "bytes32"
        },
        {
          "internalType": "string",
          "name": "_result",
          "type": "string"
        }
      ],
      "name": "__callback",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {
          "internalType": "bytes32",
          "name": "_myid",
          "type": "bytes32"
        },
        {
          "internalType": "string",
          "name": "_result",
          "type": "string"
        },
        {
          "internalType": "bytes",
          "name": "_proof",
          "type": "bytes"
        }
      ],
      "name": "__callback",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {
          "internalType": "address",
          "name": "to",
          "type": "address"
        },
        {
          "internalType": "uint256",
          "name": "tokenId",
          "type": "uint256"
        }
      ],
      "name": "approve",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [
        {
          "internalType": "address",
          "name": "owner",
          "type": "address"
        }
      ],
      "name": "balanceOf",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "baseTokenURI",
      "outputs": [
        {
          "internalType": "string",
          "name": "",
          "type": "string"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [
        {
          "internalType": "uint256",
          "name": "tokenId",
          "type": "uint256"
        }
      ],
      "name": "getApproved",
      "outputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "getOwner",
      "outputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [
        {
          "internalType": "address",
          "name": "owner",
          "type": "address"
        },
        {
          "internalType": "address",
          "name": "operator",
          "type": "address"
        }
      ],
      "name": "isApprovedForAll",
      "outputs": [
        {
          "internalType": "bool",
          "name": "",
          "type": "bool"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "isPaused",
      "outputs": [
        {
          "internalType": "bool",
          "name": "",
          "type": "bool"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {
          "internalType": "address",
          "name": "to",
          "type": "address"
        },
        {
          "internalType": "uint256",
          "name": "tokenId",
          "type": "uint256"
        }
      ],
      "name": "mint",
      "outputs": [
        {
          "internalType": "bool",
          "name": "",
          "type": "bool"
        }
      ],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "name",
      "outputs": [
        {
          "internalType": "string",
          "name": "",
          "type": "string"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [
        {
          "internalType": "uint256",
          "name": "tokenId",
          "type": "uint256"
        }
      ],
      "name": "ownerOf",
      "outputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {
          "internalType": "address",
          "name": "from",
          "type": "address"
        },
        {
          "internalType": "address",
          "name": "to",
          "type": "address"
        },
        {
          "internalType": "uint256",
          "name": "tokenId",
          "type": "uint256"
        }
      ],
      "name": "safeTransferFrom",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {
          "internalType": "address",
          "name": "from",
          "type": "address"
        },
        {
          "internalType": "address",
          "name": "to",
          "type": "address"
        },
        {
          "internalType": "uint256",
          "name": "tokenId",
          "type": "uint256"
        },
        {
          "internalType": "bytes",
          "name": "_data",
          "type": "bytes"
        }
      ],
      "name": "safeTransferFrom",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {
          "internalType": "address",
          "name": "to",
          "type": "address"
        },
        {
          "internalType": "bool",
          "name": "approved",
          "type": "bool"
        }
      ],
      "name": "setApprovalForAll",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {
          "internalType": "bool",
          "name": "_pauseStatus",
          "type": "bool"
        }
      ],
      "name": "setPauseStatus",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "squareContract",
      "outputs": [
        {
          "internalType": "contract ISquareVerifier",
          "name": "",
          "type": "address"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [
        {
          "internalType": "bytes4",
          "name": "interfaceId",
          "type": "bytes4"
        }
      ],
      "name": "supportsInterface",
      "outputs": [
        {
          "internalType": "bool",
          "name": "",
          "type": "bool"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "symbol",
      "outputs": [
        {
          "internalType": "string",
          "name": "",
          "type": "string"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [
        {
          "internalType": "uint256",
          "name": "index",
          "type": "uint256"
        }
      ],
      "name": "tokenByIndex",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [
        {
          "internalType": "address",
          "name": "owner",
          "type": "address"
        },
        {
          "internalType": "uint256",
          "name": "index",
          "type": "uint256"
        }
      ],
      "name": "tokenOfOwnerByIndex",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [
        {
          "internalType": "uint256",
          "name": "tokenId",
          "type": "uint256"
        }
      ],
      "name": "tokenURI",
      "outputs": [
        {
          "internalType": "string",
          "name": "",
          "type": "string"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "totalSupply",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {
          "internalType": "address",
          "name": "from",
          "type": "address"
        },
        {
          "internalType": "address",
          "name": "to",
          "type": "address"
        },
        {
          "internalType": "uint256",
          "name": "tokenId",
          "type": "uint256"
        }
      ],
      "name": "transferFrom",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {
          "internalType": "address",
          "name": "newOwner",
          "type": "address"
        }
      ],
      "name": "transferOwnership",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {
          "internalType": "address",
          "name": "_to",
          "type": "address"
        },
        {
          "internalType": "uint256",
          "name": "_tokenId",
          "type": "uint256"
        },
        {
          "internalType": "uint256[2]",
          "name": "a",
          "type": "uint256[2]"
        },
        {
          "internalType": "uint256[2][2]",
          "name": "b",
          "type": "uint256[2][2]"
        },
        {
          "internalType": "uint256[2]",
          "name": "c",
          "type": "uint256[2]"
        },
        {
          "internalType": "uint256[2]",
          "name": "input",
          "type": "uint256[2]"
        }
      ],
      "name": "mintNewNFT",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    }
  ],
  "metadata": "{\"compiler\":{\"version\":\"0.5.16+commit.9c3226ce\"},\"language\":\"Solidity\",\"output\":{\"abi\":[{\"inputs\":[{\"internalType\":\"address\",\"name\":\"verifierContractAddress\",\"type\":\"address\"}],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"constructor\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":true,\"internalType\":\"address\",\"name\":\"owner\",\"type\":\"address\"},{\"indexed\":true,\"internalType\":\"address\",\"name\":\"approved\",\"type\":\"address\"},{\"indexed\":true,\"internalType\":\"uint256\",\"name\":\"tokenId\",\"type\":\"uint256\"}],\"name\":\"Approval\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":true,\"internalType\":\"address\",\"name\":\"owner\",\"type\":\"address\"},{\"indexed\":true,\"internalType\":\"address\",\"name\":\"operator\",\"type\":\"address\"},{\"indexed\":false,\"internalType\":\"bool\",\"name\":\"approved\",\"type\":\"bool\"}],\"name\":\"ApprovalForAll\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":true,\"internalType\":\"address\",\"name\":\"oldOwner\",\"type\":\"address\"},{\"indexed\":true,\"internalType\":\"address\",\"name\":\"newOwner\",\"type\":\"address\"}],\"name\":\"OwnershipTransfered\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":true,\"internalType\":\"address\",\"name\":\"triggeringAddress\",\"type\":\"address\"}],\"name\":\"Paused\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"address\",\"name\":\"to\",\"type\":\"address\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"index\",\"type\":\"uint256\"}],\"name\":\"SolutionAdded\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":true,\"internalType\":\"address\",\"name\":\"from\",\"type\":\"address\"},{\"indexed\":true,\"internalType\":\"address\",\"name\":\"to\",\"type\":\"address\"},{\"indexed\":true,\"internalType\":\"uint256\",\"name\":\"tokenId\",\"type\":\"uint256\"}],\"name\":\"Transfer\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":true,\"internalType\":\"address\",\"name\":\"triggeringAddress\",\"type\":\"address\"}],\"name\":\"Unpaused\",\"type\":\"event\"},{\"constant\":false,\"inputs\":[{\"internalType\":\"bytes32\",\"name\":\"_myid\",\"type\":\"bytes32\"},{\"internalType\":\"string\",\"name\":\"_result\",\"type\":\"string\"}],\"name\":\"__callback\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"internalType\":\"bytes32\",\"name\":\"_myid\",\"type\":\"bytes32\"},{\"internalType\":\"string\",\"name\":\"_result\",\"type\":\"string\"},{\"internalType\":\"bytes\",\"name\":\"_proof\",\"type\":\"bytes\"}],\"name\":\"__callback\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"internalType\":\"address\",\"name\":\"to\",\"type\":\"address\"},{\"internalType\":\"uint256\",\"name\":\"tokenId\",\"type\":\"uint256\"}],\"name\":\"approve\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[{\"internalType\":\"address\",\"name\":\"owner\",\"type\":\"address\"}],\"name\":\"balanceOf\",\"outputs\":[{\"internalType\":\"uint256\",\"name\":\"\",\"type\":\"uint256\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"baseTokenURI\",\"outputs\":[{\"internalType\":\"string\",\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"tokenId\",\"type\":\"uint256\"}],\"name\":\"getApproved\",\"outputs\":[{\"internalType\":\"address\",\"name\":\"\",\"type\":\"address\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"getOwner\",\"outputs\":[{\"internalType\":\"address\",\"name\":\"\",\"type\":\"address\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[{\"internalType\":\"address\",\"name\":\"owner\",\"type\":\"address\"},{\"internalType\":\"address\",\"name\":\"operator\",\"type\":\"address\"}],\"name\":\"isApprovedForAll\",\"outputs\":[{\"internalType\":\"bool\",\"name\":\"\",\"type\":\"bool\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"isPaused\",\"outputs\":[{\"internalType\":\"bool\",\"name\":\"\",\"type\":\"bool\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"internalType\":\"address\",\"name\":\"to\",\"type\":\"address\"},{\"internalType\":\"uint256\",\"name\":\"tokenId\",\"type\":\"uint256\"}],\"name\":\"mint\",\"outputs\":[{\"internalType\":\"bool\",\"name\":\"\",\"type\":\"bool\"}],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"internalType\":\"address\",\"name\":\"_to\",\"type\":\"address\"},{\"internalType\":\"uint256\",\"name\":\"_tokenId\",\"type\":\"uint256\"},{\"internalType\":\"uint256[2]\",\"name\":\"a\",\"type\":\"uint256[2]\"},{\"internalType\":\"uint256[2][2]\",\"name\":\"b\",\"type\":\"uint256[2][2]\"},{\"internalType\":\"uint256[2]\",\"name\":\"c\",\"type\":\"uint256[2]\"},{\"internalType\":\"uint256[2]\",\"name\":\"input\",\"type\":\"uint256[2]\"}],\"name\":\"mintNewNFT\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"name\",\"outputs\":[{\"internalType\":\"string\",\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"tokenId\",\"type\":\"uint256\"}],\"name\":\"ownerOf\",\"outputs\":[{\"internalType\":\"address\",\"name\":\"\",\"type\":\"address\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"internalType\":\"address\",\"name\":\"from\",\"type\":\"address\"},{\"internalType\":\"address\",\"name\":\"to\",\"type\":\"address\"},{\"internalType\":\"uint256\",\"name\":\"tokenId\",\"type\":\"uint256\"}],\"name\":\"safeTransferFrom\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"internalType\":\"address\",\"name\":\"from\",\"type\":\"address\"},{\"internalType\":\"address\",\"name\":\"to\",\"type\":\"address\"},{\"internalType\":\"uint256\",\"name\":\"tokenId\",\"type\":\"uint256\"},{\"internalType\":\"bytes\",\"name\":\"_data\",\"type\":\"bytes\"}],\"name\":\"safeTransferFrom\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"internalType\":\"address\",\"name\":\"to\",\"type\":\"address\"},{\"internalType\":\"bool\",\"name\":\"approved\",\"type\":\"bool\"}],\"name\":\"setApprovalForAll\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"internalType\":\"bool\",\"name\":\"_pauseStatus\",\"type\":\"bool\"}],\"name\":\"setPauseStatus\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"squareContract\",\"outputs\":[{\"internalType\":\"contract ISquareVerifier\",\"name\":\"\",\"type\":\"address\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[{\"internalType\":\"bytes4\",\"name\":\"interfaceId\",\"type\":\"bytes4\"}],\"name\":\"supportsInterface\",\"outputs\":[{\"internalType\":\"bool\",\"name\":\"\",\"type\":\"bool\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"symbol\",\"outputs\":[{\"internalType\":\"string\",\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"index\",\"type\":\"uint256\"}],\"name\":\"tokenByIndex\",\"outputs\":[{\"internalType\":\"uint256\",\"name\":\"\",\"type\":\"uint256\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[{\"internalType\":\"address\",\"name\":\"owner\",\"type\":\"address\"},{\"internalType\":\"uint256\",\"name\":\"index\",\"type\":\"uint256\"}],\"name\":\"tokenOfOwnerByIndex\",\"outputs\":[{\"internalType\":\"uint256\",\"name\":\"\",\"type\":\"uint256\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"tokenId\",\"type\":\"uint256\"}],\"name\":\"tokenURI\",\"outputs\":[{\"internalType\":\"string\",\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"totalSupply\",\"outputs\":[{\"internalType\":\"uint256\",\"name\":\"\",\"type\":\"uint256\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"internalType\":\"address\",\"name\":\"from\",\"type\":\"address\"},{\"internalType\":\"address\",\"name\":\"to\",\"type\":\"address\"},{\"internalType\":\"uint256\",\"name\":\"tokenId\",\"type\":\"uint256\"}],\"name\":\"transferFrom\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"internalType\":\"address\",\"name\":\"newOwner\",\"type\":\"address\"}],\"name\":\"transferOwnership\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"}],\"devdoc\":{\"methods\":{\"approve(address,uint256)\":{\"details\":\"Approves another address to transfer the given token ID\"},\"isApprovedForAll(address,address)\":{\"details\":\"Tells whether an operator is approved by a given owner\",\"params\":{\"operator\":\"operator address which you want to query the approval of\",\"owner\":\"owner address which you want to query the approval of\"},\"return\":\"bool whether the given operator is approved by the given owner\"},\"setApprovalForAll(address,bool)\":{\"details\":\"Sets or unsets the approval of a given operator An operator is allowed to transfer all tokens of the sender on their behalf\",\"params\":{\"approved\":\"representing the status of the approval to be set\",\"to\":\"operator address to set the approval\"}},\"supportsInterface(bytes4)\":{\"details\":\"implement supportsInterface(bytes4) using a lookup table\"},\"tokenByIndex(uint256)\":{\"details\":\"Gets the token ID at a given index of all the tokens in this contract Reverts if the index is greater or equal to the total number of tokens\",\"params\":{\"index\":\"uint256 representing the index to be accessed of the tokens list\"},\"return\":\"uint256 token ID at the given index of the tokens list\"},\"tokenOfOwnerByIndex(address,uint256)\":{\"details\":\"Gets the token ID at a given index of the tokens list of the requested owner\",\"params\":{\"index\":\"uint256 representing the index to be accessed of the requested tokens list\",\"owner\":\"address owning the tokens list to be accessed\"},\"return\":\"uint256 token ID at the given index of the tokens list owned by the requested address\"},\"totalSupply()\":{\"details\":\"Gets the total amount of tokens stored by the contract\",\"return\":\"uint256 representing the total amount of tokens\"}}},\"userdoc\":{\"methods\":{}}},\"settings\":{\"compilationTarget\":{\"project:/contracts/SolnSquareVerifier.sol\":\"SolnSquareVerifier\"},\"evmVersion\":\"istanbul\",\"libraries\":{},\"optimizer\":{\"enabled\":false,\"runs\":200},\"remappings\":[]},\"sources\":{\"openzeppelin-solidity/contracts/drafts/Counters.sol\":{\"keccak256\":\"0x982e18d2e3df98e3339f70f955a4d1fb78411a29963d0ea34621759eef67e86d\",\"urls\":[\"bzz-raw://b51463c381bc5ad8ad1c2a0b15bfbcab7810a35f0cd33e00a85c67d5526f97e8\",\"dweb:/ipfs/Qmb51F78kH7ifaW9CbkfZhprpkbY7T16gkarbscX6E7h2f\"]},\"openzeppelin-solidity/contracts/math/SafeMath.sol\":{\"keccak256\":\"0xc2a200a877c4a9b2475c246c54ffecc69ffde3e11af83319c63c2dc5458bac80\",\"urls\":[\"bzz-raw://d6ee2095166a8fc1dbaff1949d786b91b8ef8ce41a7b5801a81dd2453220e770\",\"dweb:/ipfs/QmYBLFvCr9zKndkP8e7nFoKuZGcQEQtbHdwttC1MqckCgv\"]},\"openzeppelin-solidity/contracts/token/ERC721/IERC721Receiver.sol\":{\"keccak256\":\"0xeb8a266ef2da0aa60eea704031902ffd28b2d13dd0e8f5b69bcfb8415f2dad85\",\"urls\":[\"bzz-raw://3d69bbdaef9e7beb4919fed4f5aaca68cf3ecbf8f0932959fee720110daffaba\",\"dweb:/ipfs/QmdLwrPjDbhWBzkBMiRFbz3muLr5KQ5HQoiFk8EPkTMwRh\"]},\"openzeppelin-solidity/contracts/utils/Address.sol\":{\"keccak256\":\"0xea16b9933153c647242ba50b3e494fb133063d49f1fa81823f35a8c28754142e\",\"urls\":[\"bzz-raw://95b3b4b5c8008b6d8a862a797bf2550e8017cbff25d0e36be86cff48b1a9bbf2\",\"dweb:/ipfs/QmZWK9sD6V3jwSarEyheM8PjHFVcuA11W65FgAZ2fsu9sq\"]},\"project:/contracts/ERC721Mintable.sol\":{\"keccak256\":\"0x6e95f8106478d3f3069a3b88f0386e17e21f6742680c16fe1281151db1968344\",\"urls\":[\"bzz-raw://bfa53f635ef0fdcb1897294630d12b42cafa30d381abe729897f19755c9d20cb\",\"dweb:/ipfs/QmUrN5Hid8SgPcesymBtcKGVz2Ra22ZPzdeBACRuXzWGav\"]},\"project:/contracts/Oraclize.sol\":{\"keccak256\":\"0xe5ebe286b4624095629f76c6ac8dbad3cb305fbdb43fff09e4eebed35a05b49c\",\"urls\":[\"bzz-raw://681373c60944fa44771ccea64da3a0e1b428255757df53cfee06eae96f4ac91d\",\"dweb:/ipfs/QmWS7E26x3aXyYEZSzhTTpr8Pu11y5NK9p9iMwwvm7tMsz\"]},\"project:/contracts/SolnSquareVerifier.sol\":{\"keccak256\":\"0x21ca32026e137d26b105ec5a3afddee0b49e123ccf74caf865d8b57b37282165\",\"urls\":[\"bzz-raw://4adac027149d97053c38eb553dfb3dd36cc8692251c11dd8f639a00ff4fd2061\",\"dweb:/ipfs/QmUsFqHGdu7AoNW7Hn5vDVBqnEEpR1FooiHdKdLXgccuGd\"]},\"project:/contracts/verifier.sol\":{\"keccak256\":\"0x075109353882efb668580a6af492d03f2ace913b852afc65e1b9b0fd957f9fcb\",\"urls\":[\"bzz-raw://f515a1f6734d70cc9a91d80d60bbf0fd46aa37525776da1779c922a8c148931d\",\"dweb:/ipfs/QmerwoY35f1dQmsaAxnsu2m2pYpZv4zqb4Hh6dwzgeAnKK\"]}},\"version\":1}",
  "bytecode": "0x60806040523480156200001157600080fd5b506040516200420938038062004209833981810160405262000037919081019062000432565b6040518060400160405280600f81526020017f486f757365205469746c65204e465400000000000000000000000000000000008152506040518060400160405280600581526020017f48544e46540000000000000000000000000000000000000000000000000000008152506040518060600160405280603f8152602001620041ca603f9139336000806101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055506000809054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16600073ffffffffffffffffffffffffffffffffffffffff167f0d18b5fd22306e373229b9439188228edca81207d1667f604daf6cef8aa3ee6760405160405180910390a360008060146101000a81548160ff0219169083151502179055503373ffffffffffffffffffffffffffffffffffffffff167f5db9ee0a495bf2e6ff9c91a7834c1ba4fdd244a5e8aa4e537bd38aeae4b073aa60405160405180910390a2620001ee6301ffc9a760e01b620002cc60201b60201c565b620002066380ac58cd60e01b620002cc60201b60201c565b6200021e63780e9d6360e01b620002cc60201b60201c565b82600f9080519060200190620002369291906200036c565b5081601090805190602001906200024f9291906200036c565b508060119080519060200190620002689291906200036c565b5062000281635b5e139f60e01b620002cc60201b60201c565b50505080601360006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555050620004ac565b63ffffffff60e01b817bffffffffffffffffffffffffffffffffffffffffffffffffffffffff191614156200030057600080fd5b6001806000837bffffffffffffffffffffffffffffffffffffffffffffffffffffffff19167bffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916815260200190815260200160002060006101000a81548160ff02191690831515021790555050565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f10620003af57805160ff1916838001178555620003e0565b82800160010185558215620003e0579182015b82811115620003df578251825591602001919060010190620003c2565b5b509050620003ef9190620003f3565b5090565b6200041891905b8082111562000414576000816000905550600101620003fa565b5090565b90565b6000815190506200042c8162000492565b92915050565b6000602082840312156200044557600080fd5b600062000455848285016200041b565b91505092915050565b60006200046b8262000472565b9050919050565b600073ffffffffffffffffffffffffffffffffffffffff82169050919050565b6200049d816200045e565b8114620004a957600080fd5b50565b613d0e80620004bc6000396000f3fe608060405234801561001057600080fd5b506004361061018e5760003560e01c80636352211e116100de578063b187bd2611610097578063c87b56dd11610071578063c87b56dd14610493578063d547cfb7146104c3578063e985e9c5146104e1578063f2fde38b146105115761018e565b8063b187bd261461043d578063b88d4fde1461045b578063c38bb537146104775761018e565b80636352211e146103695780636aa69d4e1461039957806370a08231146103b5578063893d20e8146103e557806395d89b4114610403578063a22cb465146104215761018e565b806323b872dd1161014b57806338bbfa501161012557806338bbfa50146102d157806340c10f19146102ed57806342842e0e1461031d5780634f6ccce7146103395761018e565b806323b872dd1461026957806327dc297e146102855780632f745c59146102a15761018e565b8063011ec1cb1461019357806301ffc9a7146101b157806306fdde03146101e1578063081812fc146101ff578063095ea7b31461022f57806318160ddd1461024b575b600080fd5b61019b61052d565b6040516101a8919061378a565b60405180910390f35b6101cb60048036036101c69190810190612e80565b610553565b6040516101d8919061376f565b60405180910390f35b6101e96105bb565b6040516101f691906137a5565b60405180910390f35b61021960048036036102149190810190612ed2565b61065d565b6040516102269190613698565b60405180910390f35b61024960048036036102449190810190612c93565b61069a565b005b610253610955565b6040516102609190613947565b60405180910390f35b610283600480360361027e9190810190612b8d565b610962565b005b61029f600480360361029a9190810190612dad565b6109d5565b005b6102bb60048036036102b69190810190612c93565b610a18565b6040516102c89190613947565b60405180910390f35b6102eb60048036036102e69190810190612e01565b610a8b565b005b61030760048036036103029190810190612c93565b610a90565b604051610314919061376f565b60405180910390f35b61033760048036036103329190810190612b8d565b610b8d565b005b610353600480360361034e9190810190612ed2565b610bfd565b6040516103609190613947565b60405180910390f35b610383600480360361037e9190810190612ed2565b610c31565b6040516103909190613698565b60405180910390f35b6103b360048036036103ae9190810190612ccf565b610c6e565b005b6103cf60048036036103ca9190810190612b28565b610e55565b6040516103dc9190613947565b60405180910390f35b6103ed610ea5565b6040516103fa9190613698565b60405180910390f35b61040b610ece565b60405161041891906137a5565b60405180910390f35b61043b60048036036104369190810190612c57565b610f70565b005b6104456110f6565b604051610452919061376f565b60405180910390f35b61047560048036036104709190810190612bdc565b61110c565b005b610491600480360361048c9190810190612d5b565b611182565b005b6104ad60048036036104a89190810190612ed2565b6112cf565b6040516104ba91906137a5565b60405180910390f35b6104cb611396565b6040516104d891906137a5565b60405180910390f35b6104fb60048036036104f69190810190612b51565b611438565b604051610508919061376f565b60405180910390f35b61052b60048036036105269190810190612b28565b6114cc565b005b601360009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1681565b600060016000837bffffffffffffffffffffffffffffffffffffffffffffffffffffffff19167bffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916815260200190815260200160002060009054906101000a900460ff169050919050565b6060600f8054600181600116156101000203166002900480601f0160208091040260200160405190810160405280929190818152602001828054600181600116156101000203166002900480156106535780601f1061062857610100808354040283529160200191610653565b820191906000526020600020905b81548152906001019060200180831161063657829003601f168201915b5050505050905090565b60006003600083815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff169050919050565b600060149054906101000a900460ff16156106ea576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016106e190613907565b60405180910390fd5b6002600082815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff16141561078c576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161078390613867565b60405180910390fd5b6002600082815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff16148061083257506108316002600083815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1633611438565b5b610871576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161086890613807565b60405180910390fd5b816003600083815260200190815260200160002060006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550808273ffffffffffffffffffffffffffffffffffffffff166002600084815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff167f8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b92560405160405180910390a45050565b6000600880549050905090565b600060149054906101000a900460ff16156109b2576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016109a990613907565b60405180910390fd5b6109bc3382611689565b6109c557600080fd5b6109d083838361171e565b505050565b610a14828260006040519080825280601f01601f191660200182016040528015610a0e5781602001600182028038833980820191505090505b50610a8b565b5050565b6000610a2383610e55565b8210610a2e57600080fd5b600660008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000208281548110610a7857fe5b9060005260206000200154905092915050565b505050565b60008060149054906101000a900460ff1615610ae1576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610ad890613907565b60405180910390fd5b6000809054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff1614610b70576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610b6790613847565b60405180910390fd5b610b7a8383611742565b610b8382611763565b6001905092915050565b600060149054906101000a900460ff1615610bdd576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610bd490613907565b60405180910390fd5b610bf88383836040518060200160405280600081525061110c565b505050565b6000610c07610955565b8210610c1257600080fd5b60088281548110610c1f57fe5b90600052602060002001549050919050565b60006002600083815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff169050919050565b600084848484604051602001610c87949392919061364a565b604051602081830303815290604052805190602001209050600073ffffffffffffffffffffffffffffffffffffffff166015600083815260200190815260200160002060010160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1614610d44576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610d3b906137e7565b60405180910390fd5b601360009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663621e9ec0868686866040518563ffffffff1660e01b8152600401610da59493929190613728565b602060405180830381600087803b158015610dbf57600080fd5b505af1158015610dd3573d6000803e3d6000fd5b505050506040513d601f19601f82011682018060405250610df79190810190612d84565b610e36576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610e2d906138a7565b60405180910390fd5b610e41878783611881565b610e4b8787610a90565b5050505050505050565b6000610e9e600460008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000206119df565b9050919050565b60008060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff16905090565b606060108054600181600116156101000203166002900480601f016020809104026020016040519081016040528092919081815260200182805460018160011615610100020316600290048015610f665780601f10610f3b57610100808354040283529160200191610f66565b820191906000526020600020905b815481529060010190602001808311610f4957829003601f168201915b5050505050905090565b600060149054906101000a900460ff1615610fc0576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610fb790613907565b60405180910390fd5b3373ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff161415610ff957600080fd5b80600560003373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060006101000a81548160ff0219169083151502179055508173ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff167f17307eab39ab6107e8899845ad3d59bd9653f200f220920489ca2b5937696c31836040516110ea919061376f565b60405180910390a35050565b60008060149054906101000a900460ff16905090565b600060149054906101000a900460ff161561115c576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161115390613907565b60405180910390fd5b611167848484610962565b611173848484846119ed565b61117c57600080fd5b50505050565b6000809054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff1614611211576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161120890613847565b60405180910390fd5b80600060146101000a81548160ff021916908315150217905550600060149054906101000a900460ff1615611288573373ffffffffffffffffffffffffffffffffffffffff167f62e78cea01bee320cd4e420270b5ea74000d11b0c9f74754ebdbfc544b05a25860405160405180910390a26112cc565b3373ffffffffffffffffffffffffffffffffffffffff167f5db9ee0a495bf2e6ff9c91a7834c1ba4fdd244a5e8aa4e537bd38aeae4b073aa60405160405180910390a25b50565b60606112da82611b04565b6112e357600080fd5b601260008381526020019081526020016000208054600181600116156101000203166002900480601f01602080910402602001604051908101604052809291908181526020018280546001816001161561010002031660029004801561138a5780601f1061135f5761010080835404028352916020019161138a565b820191906000526020600020905b81548152906001019060200180831161136d57829003601f168201915b50505050509050919050565b606060118054600181600116156101000203166002900480601f01602080910402602001604051908101604052809291908181526020018280546001816001161561010002031660029004801561142e5780601f106114035761010080835404028352916020019161142e565b820191906000526020600020905b81548152906001019060200180831161141157829003601f168201915b5050505050905090565b6000600560008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060009054906101000a900460ff16905092915050565b6000809054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff161461155b576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161155290613847565b60405180910390fd5b600073ffffffffffffffffffffffffffffffffffffffff168173ffffffffffffffffffffffffffffffffffffffff1614156115cb576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016115c290613927565b60405180910390fd5b8073ffffffffffffffffffffffffffffffffffffffff166000809054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff167f0d18b5fd22306e373229b9439188228edca81207d1667f604daf6cef8aa3ee6760405160405180910390a3806000806101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555050565b60008061169583610c31565b90508073ffffffffffffffffffffffffffffffffffffffff168473ffffffffffffffffffffffffffffffffffffffff16148061170457508373ffffffffffffffffffffffffffffffffffffffff166116ec8461065d565b73ffffffffffffffffffffffffffffffffffffffff16145b8061171557506117148185611438565b5b91505092915050565b611729838383611b76565b6117338382611dd0565b61173d8282611f6e565b505050565b61174c8282612035565b6117568282611f6e565b61175f816121e7565b5050565b61176c81611b04565b6117ab576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016117a2906137c7565b60405180910390fd5b61185760118054600181600116156101000203166002900480601f0160208091040260200160405190810160405280929190818152602001828054600181600116156101000203166002900480156118445780601f1061181957610100808354040283529160200191611844565b820191906000526020600020905b81548152906001019060200180831161182757829003601f168201915b505050505061185283612233565b612360565b60126000838152602001908152602001600020908051906020019061187d929190612790565b5050565b611889612810565b60405180604001604052808481526020018573ffffffffffffffffffffffffffffffffffffffff168152509050601481908060018154018082558091505090600182039060005260206000209060020201600090919290919091506000820151816000015560208201518160010160006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555050505080601560008481526020019081526020016000206000820151816000015560208201518160010160006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055509050507f3a01cc868bdb36c1d9b8a262a8ad25064b23ac175b3f8e4453f1daf8ff6bac0d84846040516119d19291906136ff565b60405180910390a150505050565b600081600001549050919050565b6000611a0e8473ffffffffffffffffffffffffffffffffffffffff166123a4565b611a1b5760019050611afc565b60008473ffffffffffffffffffffffffffffffffffffffff1663150b7a02338887876040518563ffffffff1660e01b8152600401611a5c94939291906136b3565b602060405180830381600087803b158015611a7657600080fd5b505af1158015611a8a573d6000803e3d6000fd5b505050506040513d601f19601f82011682018060405250611aae9190810190612ea9565b905063150b7a0260e01b7bffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916817bffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916149150505b949350505050565b6000806002600084815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff169050600073ffffffffffffffffffffffffffffffffffffffff168173ffffffffffffffffffffffffffffffffffffffff161415915050919050565b6002600082815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168373ffffffffffffffffffffffffffffffffffffffff1614611c17576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401611c0e90613887565b60405180910390fd5b600073ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff161415611c87576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401611c7e906138c7565b60405180910390fd5b611c90816123b7565b611cd7600460008573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020612475565b611d1e600460008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020612498565b816002600083815260200190815260200160002060006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550808273ffffffffffffffffffffffffffffffffffffffff168473ffffffffffffffffffffffffffffffffffffffff167fddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef60405160405180910390a4505050565b6000611e286001600660008673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020805490506124ae90919063ffffffff16565b9050600060076000848152602001908152602001600020549050818114611f15576000600660008673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000208381548110611e9557fe5b9060005260206000200154905080600660008773ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000208381548110611eed57fe5b9060005260206000200181905550816007600083815260200190815260200160002081905550505b600660008573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020805480919060019003611f679190612840565b5050505050565b600660008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020805490506007600083815260200190815260200160002081905550600660008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000208190806001815401808255809150509060018203906000526020600020016000909192909190915055505050565b61203e81611b04565b1561207e576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401612075906138e7565b60405180910390fd5b600073ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff1614156120ee576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016120e590613827565b60405180910390fd5b816002600083815260200190815260200160002060006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550612187600460008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020612498565b808273ffffffffffffffffffffffffffffffffffffffff16600073ffffffffffffffffffffffffffffffffffffffff167fddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef60405160405180910390a45050565b6008805490506009600083815260200190815260200160002081905550600881908060018154018082558091505090600182039060005260206000200160009091929091909150555050565b6060600082141561227b576040518060400160405280600181526020017f3000000000000000000000000000000000000000000000000000000000000000815250905061235b565b600082905060005b600082146122a5578080600101915050600a828161229d57fe5b049150612283565b6060816040519080825280601f01601f1916602001820160405280156122da5781602001600182028038833980820191505090505b50905060006001830390505b6000861461235357600a86816122f857fe5b0660300160f81b8282806001900393508151811061231257fe5b60200101907effffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916908160001a905350600a868161234b57fe5b0495506122e6565b819450505050505b919050565b606061239c83836040518060200160405280600081525060405180602001604052806000815250604051806020016040528060008152506124ce565b905092915050565b600080823b905060008111915050919050565b600073ffffffffffffffffffffffffffffffffffffffff166003600083815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16146124725760006003600083815260200190815260200160002060006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055505b50565b61248d600182600001546124ae90919063ffffffff16565b816000018190555050565b6001816000016000828254019250508190555050565b6000828211156124bd57600080fd5b600082840390508091505092915050565b6060808690506060869050606086905060608690506060869050606081518351855187518951010101016040519080825280601f01601f19166020018201604052801561252a5781602001600182028038833980820191505090505b509050606081905060008090506000809050600090505b88518110156125af5788818151811061255657fe5b602001015160f81c60f81b83838060010194508151811061257357fe5b60200101907effffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916908160001a9053508080600101915050612541565b600090505b8751811015612622578781815181106125c957fe5b602001015160f81c60f81b8383806001019450815181106125e657fe5b60200101907effffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916908160001a90535080806001019150506125b4565b600090505b86518110156126955786818151811061263c57fe5b602001015160f81c60f81b83838060010194508151811061265957fe5b60200101907effffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916908160001a9053508080600101915050612627565b600090505b8551811015612708578581815181106126af57fe5b602001015160f81c60f81b8383806001019450815181106126cc57fe5b60200101907effffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916908160001a905350808060010191505061269a565b600090505b845181101561277b5784818151811061272257fe5b602001015160f81c60f81b83838060010194508151811061273f57fe5b60200101907effffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916908160001a905350808060010191505061270d565b82995050505050505050505095945050505050565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f106127d157805160ff19168380011785556127ff565b828001600101855582156127ff579182015b828111156127fe5782518255916020019190600101906127e3565b5b50905061280c919061286c565b5090565b604051806040016040528060008152602001600073ffffffffffffffffffffffffffffffffffffffff1681525090565b81548183558181111561286757818360005260206000209182019101612866919061286c565b5b505050565b61288e91905b8082111561288a576000816000905550600101612872565b5090565b90565b6000813590506128a081613c58565b92915050565b600082601f8301126128b757600080fd5b60026128ca6128c58261398f565b613962565b915081838560408402820111156128e057600080fd5b60005b8381101561291057816128f6888261291a565b8452602084019350604083019250506001810190506128e3565b5050505092915050565b600082601f83011261292b57600080fd5b600261293e612939826139b1565b613962565b9150818385602084028201111561295457600080fd5b60005b83811015612984578161296a8882612b13565b845260208401935060208301925050600181019050612957565b5050505092915050565b600082601f83011261299f57600080fd5b60026129b26129ad826139d3565b613962565b915081838560208402820111156129c857600080fd5b60005b838110156129f857816129de8882612b13565b8452602084019350602083019250506001810190506129cb565b5050505092915050565b600081359050612a1181613c6f565b92915050565b600081519050612a2681613c6f565b92915050565b600081359050612a3b81613c86565b92915050565b600081359050612a5081613c9d565b92915050565b600081519050612a6581613c9d565b92915050565b600082601f830112612a7c57600080fd5b8135612a8f612a8a826139f5565b613962565b91508082526020830160208301858383011115612aab57600080fd5b612ab6838284613c05565b50505092915050565b600082601f830112612ad057600080fd5b8135612ae3612ade82613a21565b613962565b91508082526020830160208301858383011115612aff57600080fd5b612b0a838284613c05565b50505092915050565b600081359050612b2281613cb4565b92915050565b600060208284031215612b3a57600080fd5b6000612b4884828501612891565b91505092915050565b60008060408385031215612b6457600080fd5b6000612b7285828601612891565b9250506020612b8385828601612891565b9150509250929050565b600080600060608486031215612ba257600080fd5b6000612bb086828701612891565b9350506020612bc186828701612891565b9250506040612bd286828701612b13565b9150509250925092565b60008060008060808587031215612bf257600080fd5b6000612c0087828801612891565b9450506020612c1187828801612891565b9350506040612c2287828801612b13565b925050606085013567ffffffffffffffff811115612c3f57600080fd5b612c4b87828801612a6b565b91505092959194509250565b60008060408385031215612c6a57600080fd5b6000612c7885828601612891565b9250506020612c8985828601612a02565b9150509250929050565b60008060408385031215612ca657600080fd5b6000612cb485828601612891565b9250506020612cc585828601612b13565b9150509250929050565b6000806000806000806101808789031215612ce957600080fd5b6000612cf789828a01612891565b9650506020612d0889828a01612b13565b9550506040612d1989828a0161298e565b9450506080612d2a89828a016128a6565b935050610100612d3c89828a0161298e565b925050610140612d4e89828a0161298e565b9150509295509295509295565b600060208284031215612d6d57600080fd5b6000612d7b84828501612a02565b91505092915050565b600060208284031215612d9657600080fd5b6000612da484828501612a17565b91505092915050565b60008060408385031215612dc057600080fd5b6000612dce85828601612a2c565b925050602083013567ffffffffffffffff811115612deb57600080fd5b612df785828601612abf565b9150509250929050565b600080600060608486031215612e1657600080fd5b6000612e2486828701612a2c565b935050602084013567ffffffffffffffff811115612e4157600080fd5b612e4d86828701612abf565b925050604084013567ffffffffffffffff811115612e6a57600080fd5b612e7686828701612a6b565b9150509250925092565b600060208284031215612e9257600080fd5b6000612ea084828501612a41565b91505092915050565b600060208284031215612ebb57600080fd5b6000612ec984828501612a56565b91505092915050565b600060208284031215612ee457600080fd5b6000612ef284828501612b13565b91505092915050565b6000612f0783836130d5565b60408301905092915050565b6000612f1f838361312c565b60408301905092915050565b6000612f37838361361d565b60208301905092915050565b6000612f4f838361363b565b60208301905092915050565b612f6481613bab565b82525050565b612f7381613b2d565b82525050565b612f8281613a6b565b612f8c8184613ac9565b9250612f9782613a4d565b8060005b83811015612fc8578151612faf8782612efb565b9650612fba83613aa2565b925050600181019050612f9b565b505050505050565b612fd981613a6b565b612fe38184613ad4565b9250612fee82613a4d565b8060005b8381101561301f5781516130068782612f13565b965061301183613aa2565b925050600181019050612ff2565b505050505050565b61303081613a81565b61303a8184613aea565b925061304582613a61565b8060005b8381101561307657815161305d8782612f2b565b965061306883613abc565b925050600181019050613049565b505050505050565b61308781613a81565b6130918184613b00565b925061309c82613a61565b8060005b838110156130cd5781516130b48782612f43565b96506130bf83613abc565b9250506001810190506130a0565b505050505050565b6130de81613a76565b6130e88184613adf565b92506130f382613a57565b8060005b8381101561312457815161310b8782612f2b565b965061311683613aaf565b9250506001810190506130f7565b505050505050565b61313581613a76565b61313f8184613af5565b925061314a82613a57565b8060005b8381101561317b5781516131628782612f43565b965061316d83613aaf565b92505060018101905061314e565b505050505050565b61318c81613b3f565b82525050565b600061319d82613a8c565b6131a78185613b0b565b93506131b7818560208601613c14565b6131c081613c47565b840191505092915050565b6131d481613bbd565b82525050565b60006131e582613a97565b6131ef8185613b1c565b93506131ff818560208601613c14565b61320881613c47565b840191505092915050565b6000613220601583613b1c565b91507f746f6b656e496420646f65736e277420657869737400000000000000000000006000830152602082019050919050565b6000613260602583613b1c565b91507f4572726f722120736f6c7574696f6e2068617320616c7265616479206265656e60008301527f20757365640000000000000000000000000000000000000000000000000000006020830152604082019050919050565b60006132c6603783613b1c565b91507f43616c6c696e6720616464726573732073686f756c6420626520746865206f7760008301527f6e6572206f7220617070726f76656420666f7220616c6c0000000000000000006020830152604082019050919050565b600061332c601883613b1c565b91507f476976656e206164647265737320697320696e76616c696400000000000000006000830152602082019050919050565b600061336c602d83613b1c565b91507f4f6e6c7920636f6e7472616374206f776e65722063616e20616363657373207460008301527f686973206f7065726174696f6e000000000000000000000000000000000000006020830152604082019050919050565b60006133d2603883613b1c565b91507f4e657720616464726573732073686f756c64206e6f7420616c7265616479206260008301527f6520746865206f776e6572206f662074686520746f6b656e00000000000000006020830152604082019050919050565b6000613438602783613b1c565b91507f53656e6465722073686f756c6420626520746865206f776e6572206f6620746860008301527f6520746f6b656e000000000000000000000000000000000000000000000000006020830152604082019050919050565b600061349e602383613b1c565b91507f4572726f722120736f6c7574696f6e2063616e206e6f7420626520766572696660008301527f69656400000000000000000000000000000000000000000000000000000000006020830152604082019050919050565b6000613504601583613b1c565b91507f546f206164647265737320697320696e76616c696400000000000000000000006000830152602082019050919050565b6000613544601683613b1c565b91507f746f6b656e496420616c726561647920657869737473000000000000000000006000830152602082019050919050565b6000613584601283613b1c565b91507f436f6e74726163742069732070617573656400000000000000000000000000006000830152602082019050919050565b60006135c4602383613b1c565b91507f4e6577206f776e65722061646472657373206973206e6f742076616c69642f7260008301527f65616c00000000000000000000000000000000000000000000000000000000006020830152604082019050919050565b61362681613ba1565b82525050565b61363581613ba1565b82525050565b61364481613ba1565b82525050565b6000613656828761307e565b6040820191506136668286612fd0565b608082019150613676828561307e565b604082019150613686828461307e565b60408201915081905095945050505050565b60006020820190506136ad6000830184612f6a565b92915050565b60006080820190506136c86000830187612f5b565b6136d56020830186612f6a565b6136e2604083018561362c565b81810360608301526136f48184613192565b905095945050505050565b60006040820190506137146000830185612f6a565b613721602083018461362c565b9392505050565b60006101408201905061373e6000830187613027565b61374b6040830186612f79565b61375860c0830185613027565b613766610100830184613027565b95945050505050565b60006020820190506137846000830184613183565b92915050565b600060208201905061379f60008301846131cb565b92915050565b600060208201905081810360008301526137bf81846131da565b905092915050565b600060208201905081810360008301526137e081613213565b9050919050565b6000602082019050818103600083015261380081613253565b9050919050565b60006020820190508181036000830152613820816132b9565b9050919050565b600060208201905081810360008301526138408161331f565b9050919050565b600060208201905081810360008301526138608161335f565b9050919050565b60006020820190508181036000830152613880816133c5565b9050919050565b600060208201905081810360008301526138a08161342b565b9050919050565b600060208201905081810360008301526138c081613491565b9050919050565b600060208201905081810360008301526138e0816134f7565b9050919050565b6000602082019050818103600083015261390081613537565b9050919050565b6000602082019050818103600083015261392081613577565b9050919050565b60006020820190508181036000830152613940816135b7565b9050919050565b600060208201905061395c600083018461362c565b92915050565b6000604051905081810181811067ffffffffffffffff8211171561398557600080fd5b8060405250919050565b600067ffffffffffffffff8211156139a657600080fd5b602082029050919050565b600067ffffffffffffffff8211156139c857600080fd5b602082029050919050565b600067ffffffffffffffff8211156139ea57600080fd5b602082029050919050565b600067ffffffffffffffff821115613a0c57600080fd5b601f19601f8301169050602081019050919050565b600067ffffffffffffffff821115613a3857600080fd5b601f19601f8301169050602081019050919050565b6000819050919050565b6000819050919050565b6000819050919050565b600060029050919050565b600060029050919050565b600060029050919050565b600081519050919050565b600081519050919050565b6000602082019050919050565b6000602082019050919050565b6000602082019050919050565b600081905092915050565b600081905092915050565b600081905092915050565b600081905092915050565b600081905092915050565b600081905092915050565b600082825260208201905092915050565b600082825260208201905092915050565b6000613b3882613b81565b9050919050565b60008115159050919050565b6000819050919050565b60007fffffffff0000000000000000000000000000000000000000000000000000000082169050919050565b600073ffffffffffffffffffffffffffffffffffffffff82169050919050565b6000819050919050565b6000613bb682613be1565b9050919050565b6000613bc882613bcf565b9050919050565b6000613bda82613b81565b9050919050565b6000613bec82613bf3565b9050919050565b6000613bfe82613b81565b9050919050565b82818337600083830152505050565b60005b83811015613c32578082015181840152602081019050613c17565b83811115613c41576000848401525b50505050565b6000601f19601f8301169050919050565b613c6181613b2d565b8114613c6c57600080fd5b50565b613c7881613b3f565b8114613c8357600080fd5b50565b613c8f81613b4b565b8114613c9a57600080fd5b50565b613ca681613b55565b8114613cb157600080fd5b50565b613cbd81613ba1565b8114613cc857600080fd5b5056fea365627a7a72315820086dbe82ae082c9afd5667bf34807bc3672a9961865d14321817dbc78ea8d5336c6578706572696d656e74616cf564736f6c6343000510004068747470733a2f2f73332d75732d776573742d322e616d617a6f6e6177732e636f6d2f756461636974792d626c6f636b636861696e2f63617073746f6e652f",
  "deployedBytecode": "0x608060405234801561001057600080fd5b506004361061018e5760003560e01c80636352211e116100de578063b187bd2611610097578063c87b56dd11610071578063c87b56dd14610493578063d547cfb7146104c3578063e985e9c5146104e1578063f2fde38b146105115761018e565b8063b187bd261461043d578063b88d4fde1461045b578063c38bb537146104775761018e565b80636352211e146103695780636aa69d4e1461039957806370a08231146103b5578063893d20e8146103e557806395d89b4114610403578063a22cb465146104215761018e565b806323b872dd1161014b57806338bbfa501161012557806338bbfa50146102d157806340c10f19146102ed57806342842e0e1461031d5780634f6ccce7146103395761018e565b806323b872dd1461026957806327dc297e146102855780632f745c59146102a15761018e565b8063011ec1cb1461019357806301ffc9a7146101b157806306fdde03146101e1578063081812fc146101ff578063095ea7b31461022f57806318160ddd1461024b575b600080fd5b61019b61052d565b6040516101a8919061378a565b60405180910390f35b6101cb60048036036101c69190810190612e80565b610553565b6040516101d8919061376f565b60405180910390f35b6101e96105bb565b6040516101f691906137a5565b60405180910390f35b61021960048036036102149190810190612ed2565b61065d565b6040516102269190613698565b60405180910390f35b61024960048036036102449190810190612c93565b61069a565b005b610253610955565b6040516102609190613947565b60405180910390f35b610283600480360361027e9190810190612b8d565b610962565b005b61029f600480360361029a9190810190612dad565b6109d5565b005b6102bb60048036036102b69190810190612c93565b610a18565b6040516102c89190613947565b60405180910390f35b6102eb60048036036102e69190810190612e01565b610a8b565b005b61030760048036036103029190810190612c93565b610a90565b604051610314919061376f565b60405180910390f35b61033760048036036103329190810190612b8d565b610b8d565b005b610353600480360361034e9190810190612ed2565b610bfd565b6040516103609190613947565b60405180910390f35b610383600480360361037e9190810190612ed2565b610c31565b6040516103909190613698565b60405180910390f35b6103b360048036036103ae9190810190612ccf565b610c6e565b005b6103cf60048036036103ca9190810190612b28565b610e55565b6040516103dc9190613947565b60405180910390f35b6103ed610ea5565b6040516103fa9190613698565b60405180910390f35b61040b610ece565b60405161041891906137a5565b60405180910390f35b61043b60048036036104369190810190612c57565b610f70565b005b6104456110f6565b604051610452919061376f565b60405180910390f35b61047560048036036104709190810190612bdc565b61110c565b005b610491600480360361048c9190810190612d5b565b611182565b005b6104ad60048036036104a89190810190612ed2565b6112cf565b6040516104ba91906137a5565b60405180910390f35b6104cb611396565b6040516104d891906137a5565b60405180910390f35b6104fb60048036036104f69190810190612b51565b611438565b604051610508919061376f565b60405180910390f35b61052b60048036036105269190810190612b28565b6114cc565b005b601360009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1681565b600060016000837bffffffffffffffffffffffffffffffffffffffffffffffffffffffff19167bffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916815260200190815260200160002060009054906101000a900460ff169050919050565b6060600f8054600181600116156101000203166002900480601f0160208091040260200160405190810160405280929190818152602001828054600181600116156101000203166002900480156106535780601f1061062857610100808354040283529160200191610653565b820191906000526020600020905b81548152906001019060200180831161063657829003601f168201915b5050505050905090565b60006003600083815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff169050919050565b600060149054906101000a900460ff16156106ea576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016106e190613907565b60405180910390fd5b6002600082815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff16141561078c576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161078390613867565b60405180910390fd5b6002600082815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff16148061083257506108316002600083815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1633611438565b5b610871576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161086890613807565b60405180910390fd5b816003600083815260200190815260200160002060006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550808273ffffffffffffffffffffffffffffffffffffffff166002600084815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff167f8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b92560405160405180910390a45050565b6000600880549050905090565b600060149054906101000a900460ff16156109b2576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016109a990613907565b60405180910390fd5b6109bc3382611689565b6109c557600080fd5b6109d083838361171e565b505050565b610a14828260006040519080825280601f01601f191660200182016040528015610a0e5781602001600182028038833980820191505090505b50610a8b565b5050565b6000610a2383610e55565b8210610a2e57600080fd5b600660008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000208281548110610a7857fe5b9060005260206000200154905092915050565b505050565b60008060149054906101000a900460ff1615610ae1576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610ad890613907565b60405180910390fd5b6000809054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff1614610b70576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610b6790613847565b60405180910390fd5b610b7a8383611742565b610b8382611763565b6001905092915050565b600060149054906101000a900460ff1615610bdd576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610bd490613907565b60405180910390fd5b610bf88383836040518060200160405280600081525061110c565b505050565b6000610c07610955565b8210610c1257600080fd5b60088281548110610c1f57fe5b90600052602060002001549050919050565b60006002600083815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff169050919050565b600084848484604051602001610c87949392919061364a565b604051602081830303815290604052805190602001209050600073ffffffffffffffffffffffffffffffffffffffff166015600083815260200190815260200160002060010160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1614610d44576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610d3b906137e7565b60405180910390fd5b601360009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663621e9ec0868686866040518563ffffffff1660e01b8152600401610da59493929190613728565b602060405180830381600087803b158015610dbf57600080fd5b505af1158015610dd3573d6000803e3d6000fd5b505050506040513d601f19601f82011682018060405250610df79190810190612d84565b610e36576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610e2d906138a7565b60405180910390fd5b610e41878783611881565b610e4b8787610a90565b5050505050505050565b6000610e9e600460008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000206119df565b9050919050565b60008060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff16905090565b606060108054600181600116156101000203166002900480601f016020809104026020016040519081016040528092919081815260200182805460018160011615610100020316600290048015610f665780601f10610f3b57610100808354040283529160200191610f66565b820191906000526020600020905b815481529060010190602001808311610f4957829003601f168201915b5050505050905090565b600060149054906101000a900460ff1615610fc0576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610fb790613907565b60405180910390fd5b3373ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff161415610ff957600080fd5b80600560003373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060006101000a81548160ff0219169083151502179055508173ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff167f17307eab39ab6107e8899845ad3d59bd9653f200f220920489ca2b5937696c31836040516110ea919061376f565b60405180910390a35050565b60008060149054906101000a900460ff16905090565b600060149054906101000a900460ff161561115c576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161115390613907565b60405180910390fd5b611167848484610962565b611173848484846119ed565b61117c57600080fd5b50505050565b6000809054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff1614611211576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161120890613847565b60405180910390fd5b80600060146101000a81548160ff021916908315150217905550600060149054906101000a900460ff1615611288573373ffffffffffffffffffffffffffffffffffffffff167f62e78cea01bee320cd4e420270b5ea74000d11b0c9f74754ebdbfc544b05a25860405160405180910390a26112cc565b3373ffffffffffffffffffffffffffffffffffffffff167f5db9ee0a495bf2e6ff9c91a7834c1ba4fdd244a5e8aa4e537bd38aeae4b073aa60405160405180910390a25b50565b60606112da82611b04565b6112e357600080fd5b601260008381526020019081526020016000208054600181600116156101000203166002900480601f01602080910402602001604051908101604052809291908181526020018280546001816001161561010002031660029004801561138a5780601f1061135f5761010080835404028352916020019161138a565b820191906000526020600020905b81548152906001019060200180831161136d57829003601f168201915b50505050509050919050565b606060118054600181600116156101000203166002900480601f01602080910402602001604051908101604052809291908181526020018280546001816001161561010002031660029004801561142e5780601f106114035761010080835404028352916020019161142e565b820191906000526020600020905b81548152906001019060200180831161141157829003601f168201915b5050505050905090565b6000600560008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060009054906101000a900460ff16905092915050565b6000809054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff161461155b576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161155290613847565b60405180910390fd5b600073ffffffffffffffffffffffffffffffffffffffff168173ffffffffffffffffffffffffffffffffffffffff1614156115cb576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016115c290613927565b60405180910390fd5b8073ffffffffffffffffffffffffffffffffffffffff166000809054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff167f0d18b5fd22306e373229b9439188228edca81207d1667f604daf6cef8aa3ee6760405160405180910390a3806000806101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555050565b60008061169583610c31565b90508073ffffffffffffffffffffffffffffffffffffffff168473ffffffffffffffffffffffffffffffffffffffff16148061170457508373ffffffffffffffffffffffffffffffffffffffff166116ec8461065d565b73ffffffffffffffffffffffffffffffffffffffff16145b8061171557506117148185611438565b5b91505092915050565b611729838383611b76565b6117338382611dd0565b61173d8282611f6e565b505050565b61174c8282612035565b6117568282611f6e565b61175f816121e7565b5050565b61176c81611b04565b6117ab576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016117a2906137c7565b60405180910390fd5b61185760118054600181600116156101000203166002900480601f0160208091040260200160405190810160405280929190818152602001828054600181600116156101000203166002900480156118445780601f1061181957610100808354040283529160200191611844565b820191906000526020600020905b81548152906001019060200180831161182757829003601f168201915b505050505061185283612233565b612360565b60126000838152602001908152602001600020908051906020019061187d929190612790565b5050565b611889612810565b60405180604001604052808481526020018573ffffffffffffffffffffffffffffffffffffffff168152509050601481908060018154018082558091505090600182039060005260206000209060020201600090919290919091506000820151816000015560208201518160010160006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555050505080601560008481526020019081526020016000206000820151816000015560208201518160010160006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055509050507f3a01cc868bdb36c1d9b8a262a8ad25064b23ac175b3f8e4453f1daf8ff6bac0d84846040516119d19291906136ff565b60405180910390a150505050565b600081600001549050919050565b6000611a0e8473ffffffffffffffffffffffffffffffffffffffff166123a4565b611a1b5760019050611afc565b60008473ffffffffffffffffffffffffffffffffffffffff1663150b7a02338887876040518563ffffffff1660e01b8152600401611a5c94939291906136b3565b602060405180830381600087803b158015611a7657600080fd5b505af1158015611a8a573d6000803e3d6000fd5b505050506040513d601f19601f82011682018060405250611aae9190810190612ea9565b905063150b7a0260e01b7bffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916817bffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916149150505b949350505050565b6000806002600084815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff169050600073ffffffffffffffffffffffffffffffffffffffff168173ffffffffffffffffffffffffffffffffffffffff161415915050919050565b6002600082815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168373ffffffffffffffffffffffffffffffffffffffff1614611c17576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401611c0e90613887565b60405180910390fd5b600073ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff161415611c87576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401611c7e906138c7565b60405180910390fd5b611c90816123b7565b611cd7600460008573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020612475565b611d1e600460008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020612498565b816002600083815260200190815260200160002060006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550808273ffffffffffffffffffffffffffffffffffffffff168473ffffffffffffffffffffffffffffffffffffffff167fddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef60405160405180910390a4505050565b6000611e286001600660008673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020805490506124ae90919063ffffffff16565b9050600060076000848152602001908152602001600020549050818114611f15576000600660008673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000208381548110611e9557fe5b9060005260206000200154905080600660008773ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000208381548110611eed57fe5b9060005260206000200181905550816007600083815260200190815260200160002081905550505b600660008573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020805480919060019003611f679190612840565b5050505050565b600660008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020805490506007600083815260200190815260200160002081905550600660008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000208190806001815401808255809150509060018203906000526020600020016000909192909190915055505050565b61203e81611b04565b1561207e576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401612075906138e7565b60405180910390fd5b600073ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff1614156120ee576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016120e590613827565b60405180910390fd5b816002600083815260200190815260200160002060006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550612187600460008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020612498565b808273ffffffffffffffffffffffffffffffffffffffff16600073ffffffffffffffffffffffffffffffffffffffff167fddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef60405160405180910390a45050565b6008805490506009600083815260200190815260200160002081905550600881908060018154018082558091505090600182039060005260206000200160009091929091909150555050565b6060600082141561227b576040518060400160405280600181526020017f3000000000000000000000000000000000000000000000000000000000000000815250905061235b565b600082905060005b600082146122a5578080600101915050600a828161229d57fe5b049150612283565b6060816040519080825280601f01601f1916602001820160405280156122da5781602001600182028038833980820191505090505b50905060006001830390505b6000861461235357600a86816122f857fe5b0660300160f81b8282806001900393508151811061231257fe5b60200101907effffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916908160001a905350600a868161234b57fe5b0495506122e6565b819450505050505b919050565b606061239c83836040518060200160405280600081525060405180602001604052806000815250604051806020016040528060008152506124ce565b905092915050565b600080823b905060008111915050919050565b600073ffffffffffffffffffffffffffffffffffffffff166003600083815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16146124725760006003600083815260200190815260200160002060006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055505b50565b61248d600182600001546124ae90919063ffffffff16565b816000018190555050565b6001816000016000828254019250508190555050565b6000828211156124bd57600080fd5b600082840390508091505092915050565b6060808690506060869050606086905060608690506060869050606081518351855187518951010101016040519080825280601f01601f19166020018201604052801561252a5781602001600182028038833980820191505090505b509050606081905060008090506000809050600090505b88518110156125af5788818151811061255657fe5b602001015160f81c60f81b83838060010194508151811061257357fe5b60200101907effffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916908160001a9053508080600101915050612541565b600090505b8751811015612622578781815181106125c957fe5b602001015160f81c60f81b8383806001019450815181106125e657fe5b60200101907effffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916908160001a90535080806001019150506125b4565b600090505b86518110156126955786818151811061263c57fe5b602001015160f81c60f81b83838060010194508151811061265957fe5b60200101907effffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916908160001a9053508080600101915050612627565b600090505b8551811015612708578581815181106126af57fe5b602001015160f81c60f81b8383806001019450815181106126cc57fe5b60200101907effffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916908160001a905350808060010191505061269a565b600090505b845181101561277b5784818151811061272257fe5b602001015160f81c60f81b83838060010194508151811061273f57fe5b60200101907effffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916908160001a905350808060010191505061270d565b82995050505050505050505095945050505050565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f106127d157805160ff19168380011785556127ff565b828001600101855582156127ff579182015b828111156127fe5782518255916020019190600101906127e3565b5b50905061280c919061286c565b5090565b604051806040016040528060008152602001600073ffffffffffffffffffffffffffffffffffffffff1681525090565b81548183558181111561286757818360005260206000209182019101612866919061286c565b5b505050565b61288e91905b8082111561288a576000816000905550600101612872565b5090565b90565b6000813590506128a081613c58565b92915050565b600082601f8301126128b757600080fd5b60026128ca6128c58261398f565b613962565b915081838560408402820111156128e057600080fd5b60005b8381101561291057816128f6888261291a565b8452602084019350604083019250506001810190506128e3565b5050505092915050565b600082601f83011261292b57600080fd5b600261293e612939826139b1565b613962565b9150818385602084028201111561295457600080fd5b60005b83811015612984578161296a8882612b13565b845260208401935060208301925050600181019050612957565b5050505092915050565b600082601f83011261299f57600080fd5b60026129b26129ad826139d3565b613962565b915081838560208402820111156129c857600080fd5b60005b838110156129f857816129de8882612b13565b8452602084019350602083019250506001810190506129cb565b5050505092915050565b600081359050612a1181613c6f565b92915050565b600081519050612a2681613c6f565b92915050565b600081359050612a3b81613c86565b92915050565b600081359050612a5081613c9d565b92915050565b600081519050612a6581613c9d565b92915050565b600082601f830112612a7c57600080fd5b8135612a8f612a8a826139f5565b613962565b91508082526020830160208301858383011115612aab57600080fd5b612ab6838284613c05565b50505092915050565b600082601f830112612ad057600080fd5b8135612ae3612ade82613a21565b613962565b91508082526020830160208301858383011115612aff57600080fd5b612b0a838284613c05565b50505092915050565b600081359050612b2281613cb4565b92915050565b600060208284031215612b3a57600080fd5b6000612b4884828501612891565b91505092915050565b60008060408385031215612b6457600080fd5b6000612b7285828601612891565b9250506020612b8385828601612891565b9150509250929050565b600080600060608486031215612ba257600080fd5b6000612bb086828701612891565b9350506020612bc186828701612891565b9250506040612bd286828701612b13565b9150509250925092565b60008060008060808587031215612bf257600080fd5b6000612c0087828801612891565b9450506020612c1187828801612891565b9350506040612c2287828801612b13565b925050606085013567ffffffffffffffff811115612c3f57600080fd5b612c4b87828801612a6b565b91505092959194509250565b60008060408385031215612c6a57600080fd5b6000612c7885828601612891565b9250506020612c8985828601612a02565b9150509250929050565b60008060408385031215612ca657600080fd5b6000612cb485828601612891565b9250506020612cc585828601612b13565b9150509250929050565b6000806000806000806101808789031215612ce957600080fd5b6000612cf789828a01612891565b9650506020612d0889828a01612b13565b9550506040612d1989828a0161298e565b9450506080612d2a89828a016128a6565b935050610100612d3c89828a0161298e565b925050610140612d4e89828a0161298e565b9150509295509295509295565b600060208284031215612d6d57600080fd5b6000612d7b84828501612a02565b91505092915050565b600060208284031215612d9657600080fd5b6000612da484828501612a17565b91505092915050565b60008060408385031215612dc057600080fd5b6000612dce85828601612a2c565b925050602083013567ffffffffffffffff811115612deb57600080fd5b612df785828601612abf565b9150509250929050565b600080600060608486031215612e1657600080fd5b6000612e2486828701612a2c565b935050602084013567ffffffffffffffff811115612e4157600080fd5b612e4d86828701612abf565b925050604084013567ffffffffffffffff811115612e6a57600080fd5b612e7686828701612a6b565b9150509250925092565b600060208284031215612e9257600080fd5b6000612ea084828501612a41565b91505092915050565b600060208284031215612ebb57600080fd5b6000612ec984828501612a56565b91505092915050565b600060208284031215612ee457600080fd5b6000612ef284828501612b13565b91505092915050565b6000612f0783836130d5565b60408301905092915050565b6000612f1f838361312c565b60408301905092915050565b6000612f37838361361d565b60208301905092915050565b6000612f4f838361363b565b60208301905092915050565b612f6481613bab565b82525050565b612f7381613b2d565b82525050565b612f8281613a6b565b612f8c8184613ac9565b9250612f9782613a4d565b8060005b83811015612fc8578151612faf8782612efb565b9650612fba83613aa2565b925050600181019050612f9b565b505050505050565b612fd981613a6b565b612fe38184613ad4565b9250612fee82613a4d565b8060005b8381101561301f5781516130068782612f13565b965061301183613aa2565b925050600181019050612ff2565b505050505050565b61303081613a81565b61303a8184613aea565b925061304582613a61565b8060005b8381101561307657815161305d8782612f2b565b965061306883613abc565b925050600181019050613049565b505050505050565b61308781613a81565b6130918184613b00565b925061309c82613a61565b8060005b838110156130cd5781516130b48782612f43565b96506130bf83613abc565b9250506001810190506130a0565b505050505050565b6130de81613a76565b6130e88184613adf565b92506130f382613a57565b8060005b8381101561312457815161310b8782612f2b565b965061311683613aaf565b9250506001810190506130f7565b505050505050565b61313581613a76565b61313f8184613af5565b925061314a82613a57565b8060005b8381101561317b5781516131628782612f43565b965061316d83613aaf565b92505060018101905061314e565b505050505050565b61318c81613b3f565b82525050565b600061319d82613a8c565b6131a78185613b0b565b93506131b7818560208601613c14565b6131c081613c47565b840191505092915050565b6131d481613bbd565b82525050565b60006131e582613a97565b6131ef8185613b1c565b93506131ff818560208601613c14565b61320881613c47565b840191505092915050565b6000613220601583613b1c565b91507f746f6b656e496420646f65736e277420657869737400000000000000000000006000830152602082019050919050565b6000613260602583613b1c565b91507f4572726f722120736f6c7574696f6e2068617320616c7265616479206265656e60008301527f20757365640000000000000000000000000000000000000000000000000000006020830152604082019050919050565b60006132c6603783613b1c565b91507f43616c6c696e6720616464726573732073686f756c6420626520746865206f7760008301527f6e6572206f7220617070726f76656420666f7220616c6c0000000000000000006020830152604082019050919050565b600061332c601883613b1c565b91507f476976656e206164647265737320697320696e76616c696400000000000000006000830152602082019050919050565b600061336c602d83613b1c565b91507f4f6e6c7920636f6e7472616374206f776e65722063616e20616363657373207460008301527f686973206f7065726174696f6e000000000000000000000000000000000000006020830152604082019050919050565b60006133d2603883613b1c565b91507f4e657720616464726573732073686f756c64206e6f7420616c7265616479206260008301527f6520746865206f776e6572206f662074686520746f6b656e00000000000000006020830152604082019050919050565b6000613438602783613b1c565b91507f53656e6465722073686f756c6420626520746865206f776e6572206f6620746860008301527f6520746f6b656e000000000000000000000000000000000000000000000000006020830152604082019050919050565b600061349e602383613b1c565b91507f4572726f722120736f6c7574696f6e2063616e206e6f7420626520766572696660008301527f69656400000000000000000000000000000000000000000000000000000000006020830152604082019050919050565b6000613504601583613b1c565b91507f546f206164647265737320697320696e76616c696400000000000000000000006000830152602082019050919050565b6000613544601683613b1c565b91507f746f6b656e496420616c726561647920657869737473000000000000000000006000830152602082019050919050565b6000613584601283613b1c565b91507f436f6e74726163742069732070617573656400000000000000000000000000006000830152602082019050919050565b60006135c4602383613b1c565b91507f4e6577206f776e65722061646472657373206973206e6f742076616c69642f7260008301527f65616c00000000000000000000000000000000000000000000000000000000006020830152604082019050919050565b61362681613ba1565b82525050565b61363581613ba1565b82525050565b61364481613ba1565b82525050565b6000613656828761307e565b6040820191506136668286612fd0565b608082019150613676828561307e565b604082019150613686828461307e565b60408201915081905095945050505050565b60006020820190506136ad6000830184612f6a565b92915050565b60006080820190506136c86000830187612f5b565b6136d56020830186612f6a565b6136e2604083018561362c565b81810360608301526136f48184613192565b905095945050505050565b60006040820190506137146000830185612f6a565b613721602083018461362c565b9392505050565b60006101408201905061373e6000830187613027565b61374b6040830186612f79565b61375860c0830185613027565b613766610100830184613027565b95945050505050565b60006020820190506137846000830184613183565b92915050565b600060208201905061379f60008301846131cb565b92915050565b600060208201905081810360008301526137bf81846131da565b905092915050565b600060208201905081810360008301526137e081613213565b9050919050565b6000602082019050818103600083015261380081613253565b9050919050565b60006020820190508181036000830152613820816132b9565b9050919050565b600060208201905081810360008301526138408161331f565b9050919050565b600060208201905081810360008301526138608161335f565b9050919050565b60006020820190508181036000830152613880816133c5565b9050919050565b600060208201905081810360008301526138a08161342b565b9050919050565b600060208201905081810360008301526138c081613491565b9050919050565b600060208201905081810360008301526138e0816134f7565b9050919050565b6000602082019050818103600083015261390081613537565b9050919050565b6000602082019050818103600083015261392081613577565b9050919050565b60006020820190508181036000830152613940816135b7565b9050919050565b600060208201905061395c600083018461362c565b92915050565b6000604051905081810181811067ffffffffffffffff8211171561398557600080fd5b8060405250919050565b600067ffffffffffffffff8211156139a657600080fd5b602082029050919050565b600067ffffffffffffffff8211156139c857600080fd5b602082029050919050565b600067ffffffffffffffff8211156139ea57600080fd5b602082029050919050565b600067ffffffffffffffff821115613a0c57600080fd5b601f19601f8301169050602081019050919050565b600067ffffffffffffffff821115613a3857600080fd5b601f19601f8301169050602081019050919050565b6000819050919050565b6000819050919050565b6000819050919050565b600060029050919050565b600060029050919050565b600060029050919050565b600081519050919050565b600081519050919050565b6000602082019050919050565b6000602082019050919050565b6000602082019050919050565b600081905092915050565b600081905092915050565b600081905092915050565b600081905092915050565b600081905092915050565b600081905092915050565b600082825260208201905092915050565b600082825260208201905092915050565b6000613b3882613b81565b9050919050565b60008115159050919050565b6000819050919050565b60007fffffffff0000000000000000000000000000000000000000000000000000000082169050919050565b600073ffffffffffffffffffffffffffffffffffffffff82169050919050565b6000819050919050565b6000613bb682613be1565b9050919050565b6000613bc882613bcf565b9050919050565b6000613bda82613b81565b9050919050565b6000613bec82613bf3565b9050919050565b6000613bfe82613b81565b9050919050565b82818337600083830152505050565b60005b83811015613c32578082015181840152602081019050613c17565b83811115613c41576000848401525b50505050565b6000601f19601f8301169050919050565b613c6181613b2d565b8114613c6c57600080fd5b50565b613c7881613b3f565b8114613c8357600080fd5b50565b613c8f81613b4b565b8114613c9a57600080fd5b50565b613ca681613b55565b8114613cb157600080fd5b50565b613cbd81613ba1565b8114613cc857600080fd5b5056fea365627a7a72315820086dbe82ae082c9afd5667bf34807bc3672a9961865d14321817dbc78ea8d5336c6578706572696d656e74616cf564736f6c63430005100040",
  "sourceMap": "486:2144:6:-;;;584:145;8:9:-1;5:2;;;30:1;27;20:12;5:2;584:145:6;;;;;;;;;;;;;;;;;;;;;;;;21113:313:4;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;993:10;984:6;;:19;;;;;;;;;;;;;;;;;;1050:6;;;;;;;;;;;1018:39;;1046:1;1018:39;;;;;;;;;;;;2369:5;2359:7;;:15;;;;;;;;;;;;;;;;;;2398:10;2389:20;;;;;;;;;;;;3398:40;2996:10;3417:20;;3398:18;;;:40;;:::i;:::-;5651;5526:10;5670:20;;5651:18;;;:40;;:::i;:::-;13725:51;13331:10;13744:31;;13725:18;;;:51;;:::i;:::-;21291:4;21283:5;:12;;;;;;;;;;;;:::i;:::-;;21315:6;21305:7;:16;;;;;;;;;;;;:::i;:::-;;21347:12;21331:13;:28;;;;;;;;;;;;:::i;:::-;;21370:49;20924:10;21389:29;;21370:18;;;:49;;:::i;:::-;21113:313;;;698:23:6;665:14;;:57;;;;;;;;;;;;;;;;;;584:145;486:2144;;3776:158:4;3866:10;3851:25;;:11;:25;;;;;3843:34;;;;;;3923:4;3887:20;:33;3908:11;3887:33;;;;;;;;;;;;;;;;;;:40;;;;;;;;;;;;;;;;;;3776:158;:::o;486:2144:6:-;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:::i;:::-;;;:::o;:::-;;;;;;;;;;;;;;;;;;;;;;;;;;;:::o;5:134:-1:-;;89:6;83:13;74:22;;101:33;128:5;101:33;;;68:71;;;;;146:263;;261:2;249:9;240:7;236:23;232:32;229:2;;;277:1;274;267:12;229:2;312:1;329:64;385:7;376:6;365:9;361:22;329:64;;;319:74;;291:108;223:186;;;;;416:91;;478:24;496:5;478:24;;;467:35;;461:46;;;;514:121;;587:42;580:5;576:54;565:65;;559:76;;;;642:117;711:24;729:5;711:24;;;704:5;701:35;691:2;;750:1;747;740:12;691:2;685:74;;486:2144:6;;;;;;;",
  "deployedSourceMap": "486:2144:6:-;;;;8:9:-1;5:2;;;30:1;27;20:12;5:2;486:2144:6;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;540:37;;;:::i;:::-;;;;;;;;;;;;;;;;3536:161:4;;;;;;;;;;;;;;;;:::i;:::-;;;;;;;;;;;;;;;;21513:81;;;:::i;:::-;;;;;;;;;;;;;;;;7055:167;;;;;;;;;;;;;;;;:::i;:::-;;;;;;;;;;;;;;;;6247:802;;;;;;;;;;;;;;;;:::i;:::-;;14518:94;;;:::i;:::-;;;;;;;;;;;;;;;;8241:224;;;;;;;;;;;;;;;;:::i;:::-;;14801:122:5;;;;;;;;;;;;;;;;:::i;:::-;;14156:210:4;;;;;;;;;;;;;;;;:::i;:::-;;;;;;;;;;;;;;;;14929:166:5;;;;;;;;;;;;;;;;:::i;:::-;;23402:224:4;;;;;;;;;;;;;;;;:::i;:::-;;;;;;;;;;;;;;;;8471:176;;;;;;;;;;;;;;;;:::i;:::-;;14949:148;;;;;;;;;;;;;;;;:::i;:::-;;;;;;;;;;;;;;;;5995:162;;;;;;;;;;;;;;;;:::i;:::-;;;;;;;;;;;;;;;;1779:849:6;;;;;;;;;;;;;;;;:::i;:::-;;5704:285:4;;;;;;;;;;;;;;;;:::i;:::-;;;;;;;;;;;;;;;;1237:80;;;:::i;:::-;;;;;;;;;;;;;;;;21600:85;;;:::i;:::-;;;;;;;;;;;;;;;;7514:227;;;;;;;;;;;;;;;;:::i;:::-;;2614:78;;;:::i;:::-;;;;;;;;;;;;;;;;8653:263;;;;;;;;;;;;;;;;:::i;:::-;;2698:225;;;;;;;;;;;;;;;;:::i;:::-;;21794:151;;;;;;;;;;;;;;;;:::i;:::-;;;;;;;;;;;;;;;;21691:97;;;:::i;:::-;;;;;;;;;;;;;;;;8062:173;;;;;;;;;;;;;;;;:::i;:::-;;;;;;;;;;;;;;;;1323:366;;;;;;;;;;;;;;;;:::i;:::-;;540:37:6;;;;;;;;;;;;;:::o;3536:161:4:-;3630:4;3657:20;:33;3678:11;3657:33;;;;;;;;;;;;;;;;;;;;;;;;;;;3650:40;;3536:161;;;:::o;21513:81::-;21550:13;21582:5;21575:12;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;21513:81;:::o;7055:167::-;7114:7;7191:15;:24;7207:7;7191:24;;;;;;;;;;;;;;;;;;;;;7184:31;;7055:167;;;:::o;6247:802::-;2466:7;;;;;;;;;;;2465:8;2457:39;;;;;;;;;;;;;;;;;;;;;;6428:11;:20;6440:7;6428:20;;;;;;;;;;;;;;;;;;;;;6422:26;;:2;:26;;;;6401:129;;;;;;;;;;;;;;;;;;;;;;6681:11;:20;6693:7;6681:20;;;;;;;;;;;;;;;;;;;;;6667:34;;:10;:34;;;6666:108;;;;6723:50;6740:11;:20;6752:7;6740:20;;;;;;;;;;;;;;;;;;;;;6762:10;6723:16;:50::i;:::-;6666:108;6645:210;;;;;;;;;;;;;;;;;;;;;;6945:2;6918:15;:24;6934:7;6918:24;;;;;;;;;;;;:29;;;;;;;;;;;;;;;;;;7034:7;7030:2;6999:43;;7008:11;:20;7020:7;7008:20;;;;;;;;;;;;;;;;;;;;;6999:43;;;;;;;;;;;;6247:802;;:::o;14518:94::-;14562:7;14588:10;:17;;;;14581:24;;14518:94;:::o;8241:224::-;2466:7;;;;;;;;;;;2465:8;2457:39;;;;;;;;;;;;;;;;;;;;;;8375;8394:10;8406:7;8375:18;:39::i;:::-;8367:48;;;;;;8426:32;8440:4;8446:2;8450:7;8426:13;:32::i;:::-;8241:224;;;:::o;14801:122:5:-;14876:40;14887:5;14894:7;14913:1;14903:12;;;;;;;;;;;;;;;;;;;;;;;;;29:1:-1;21:6;17:14;116:4;104:10;96:6;87:34;147:4;139:6;135:17;125:27;;0:156;14903:12:5;;;;14876:10;:40::i;:::-;14801:122;;:::o;14156:210:4:-;14260:7;14299:16;14309:5;14299:9;:16::i;:::-;14291:5;:24;14283:33;;;;;;14333:12;:19;14346:5;14333:19;;;;;;;;;;;;;;;14353:5;14333:26;;;;;;;;;;;;;;;;14326:33;;14156:210;;;;:::o;14929:166:5:-;;;;:::o;23402:224:4:-;23517:4;2466:7;;;;;;;;;;;2465:8;2457:39;;;;;;;;;;;;;;;;;;;;;;1136:6;;;;;;;;;;;1122:20;;:10;:20;;;1101:112;;;;;;;;;;;;;;;;;;;;;;23537:24;23549:2;23553:7;23537:11;:24::i;:::-;23571:27;23590:7;23571:18;:27::i;:::-;23615:4;23608:11;;23402:224;;;;:::o;8471:176::-;2466:7;;;;;;;;;;;2465:8;2457:39;;;;;;;;;;;;;;;;;;;;;;8601;8618:4;8624:2;8628:7;8601:39;;;;;;;;;;;;:16;:39::i;:::-;8471:176;;;:::o;14949:148::-;15007:7;15042:13;:11;:13::i;:::-;15034:5;:21;15026:30;;;;;;15073:10;15084:5;15073:17;;;;;;;;;;;;;;;;15066:24;;14949:148;;;:::o;5995:162::-;6050:7;6130:11;:20;6142:7;6130:20;;;;;;;;;;;;;;;;;;;;;6123:27;;5995:162;;;:::o;1779:849:6:-;2028:16;2074:1;2077;2080;2083:5;2057:32;;;;;;;;;;;;;;;49:4:-1;39:7;30;26:21;22:32;13:7;6:49;2057:32:6;;;2047:43;;;;;;2028:62;;2248:1;2195:55;;:15;:25;2211:8;2195:25;;;;;;;;;;;:41;;;;;;;;;;;;:55;;;2174:139;;;;;;;;;;;;;;;;;;;;;;2372:14;;;;;;;;;;;:23;;;2396:1;2399;2402;2405:5;2372:39;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;8:9:-1;5:2;;;30:1;27;20:12;5:2;2372:39:6;;;;8:9:-1;5:2;;;45:16;42:1;39;24:38;77:16;74:1;67:27;5:2;2372:39:6;;;;;;;101:4:-1;97:9;90:4;84;80:15;76:31;69:5;65:43;126:6;120:4;113:20;0:138;2372:39:6;;;;;;;;;2351:121;;;;;;;;;;;;;;;;;;;;;;2483:36;2495:3;2500:8;2510;2483:11;:36::i;:::-;2596:25;2607:3;2612:8;2596:10;:25::i;:::-;;1779:849;;;;;;;:::o;5704:285:4:-;5759:7;5948:34;:17;:24;5966:5;5948:24;;;;;;;;;;;;;;;:32;:34::i;:::-;5941:41;;5704:285;;;:::o;1237:80::-;1278:7;1304:6;;;;;;;;;;;1297:13;;1237:80;:::o;21600:85::-;21639:13;21671:7;21664:14;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;21600:85;:::o;7514:227::-;2466:7;;;;;;;;;;;2465:8;2457:39;;;;;;;;;;;;;;;;;;;;;;7613:10;7607:16;;:2;:16;;;;7599:25;;;;;;7671:8;7634:18;:30;7653:10;7634:30;;;;;;;;;;;;;;;:34;7665:2;7634:34;;;;;;;;;;;;;;;;:45;;;;;;;;;;;;;;;;;;7721:2;7694:40;;7709:10;7694:40;;;7725:8;7694:40;;;;;;;;;;;;;;;7514:227;;:::o;2614:78::-;2655:4;2678:7;;;;;;;;;;;2671:14;;2614:78;:::o;8653:263::-;2466:7;;;;;;;;;;;2465:8;2457:39;;;;;;;;;;;;;;;;;;;;;;8811:31;8824:4;8830:2;8834:7;8811:12;:31::i;:::-;8860:48;8883:4;8889:2;8893:7;8902:5;8860:22;:48::i;:::-;8852:57;;;;;;8653:263;;;;:::o;2698:225::-;1136:6;;;;;;;;;;;1122:20;;:10;:20;;;1101:112;;;;;;;;;;;;;;;;;;;;;;2778:12;2768:7;;:22;;;;;;;;;;;;;;;;;;2804:7;;;;;;;;;;;2800:117;;;2839:10;2832:18;;;;;;;;;;;;2800:117;;;2895:10;2886:20;;;;;;;;;;;;2800:117;2698:225;:::o;21794:151::-;21852:13;21885:16;21893:7;21885;:16::i;:::-;21877:25;;;;;;21919:10;:19;21930:7;21919:19;;;;;;;;;;;21912:26;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;21794:151;;;:::o;21691:97::-;21736:13;21768;21761:20;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;21691:97;:::o;8062:173::-;8166:4;8193:18;:25;8212:5;8193:25;;;;;;;;;;;;;;;:35;8219:8;8193:35;;;;;;;;;;;;;;;;;;;;;;;;;8186:42;;8062:173;;;;:::o;1323:366::-;1136:6;;;;;;;;;;;1122:20;;:10;:20;;;1101:112;;;;;;;;;;;;;;;;;;;;;;1561:1;1541:22;;:8;:22;;;;1533:70;;;;;;;;;;;;;;;;;;;;;;1646:8;1618:37;;1638:6;;;;;;;;;;;1618:37;;;;;;;;;;;;1674:8;1665:6;;:17;;;;;;;;;;;;;;;;;;1323:366;:::o;9622:298::-;9731:4;9751:13;9767:16;9775:7;9767;:16::i;:::-;9751:32;;9812:5;9801:16;;:7;:16;;;:63;;;;9857:7;9833:31;;:20;9845:7;9833:11;:20::i;:::-;:31;;;9801:63;:111;;;;9880:32;9897:5;9904:7;9880:16;:32::i;:::-;9801:111;9793:120;;;9622:298;;;;:::o;15472:269::-;15587:38;15607:4;15613:2;15617:7;15587:19;:38::i;:::-;15636:47;15669:4;15675:7;15636:32;:47::i;:::-;15694:40;15722:2;15726:7;15694:27;:40::i;:::-;15472:269;;;:::o;15996:196::-;16059:24;16071:2;16075:7;16059:11;:24::i;:::-;16094:40;16122:2;16126:7;16094:27;:40::i;:::-;16145;16177:7;16145:31;:40::i;:::-;15996:196;;:::o;22417:190::-;22483:16;22491:7;22483;:16::i;:::-;22475:50;;;;;;;;;;;;;;;;;;;;;;22557:43;22567:13;22557:43;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;22582:17;22591:7;22582:8;:17::i;:::-;22557:9;:43::i;:::-;22535:10;:19;22546:7;22535:19;;;;;;;;;;;:65;;;;;;;;;;;;:::i;:::-;;22417:190;:::o;1290:395:6:-;1420:25;;:::i;:::-;1448:94;;;;;;;;1478:6;1448:94;;;;1515:16;1448:94;;;;;1420:122;;1552:9;1567;1552:25;;39:1:-1;33:3;27:10;23:18;57:10;52:3;45:23;79:10;72:17;;0:93;1552:25:6;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;1615:9;1587:15;:25;1603:8;1587:25;;;;;;;;;;;:37;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;1639:39;1653:16;1671:6;1639:39;;;;;;;;;;;;;;;;1290:395;;;;:::o;1062:112:0:-;1127:7;1153;:14;;;1146:21;;1062:112;;;:::o;12092:431:4:-;12243:4;12264:15;:2;:13;;;:15::i;:::-;12259:58;;12302:4;12295:11;;;;12259:58;12327:13;12359:2;12343:36;;;12393:10;12417:4;12435:7;12456:5;12343:128;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;8:9:-1;5:2;;;30:1;27;20:12;5:2;12343:128:4;;;;8:9:-1;5:2;;;45:16;42:1;39;24:38;77:16;74:1;67:27;5:2;12343:128:4;;;;;;;101:4:-1;97:9;90:4;84;80:15;76:31;69:5;65:43;126:6;120:4;113:20;0:138;12343:128:4;;;;;;;;;12327:144;;4664:10;12499:16;;12489:26;;;:6;:26;;;;12481:35;;;12092:431;;;;;;;:::o;9110:152::-;9167:4;9183:13;9199:11;:20;9211:7;9199:20;;;;;;;;;;;;;;;;;;;;;9183:36;;9253:1;9236:19;;:5;:19;;;;9229:26;;;9110:152;;;:::o;10786:778::-;11000:11;:20;11012:7;11000:20;;;;;;;;;;;;;;;;;;;;;10992:28;;:4;:28;;;10971:114;;;;;;;;;;;;;;;;;;;;;;11186:1;11172:16;;:2;:16;;;;11164:50;;;;;;;;;;;;;;;;;;;;;;11257:23;11272:7;11257:14;:23::i;:::-;11365:35;:17;:23;11383:4;11365:23;;;;;;;;;;;;;;;:33;:35::i;:::-;11410:33;:17;:21;11428:2;11410:21;;;;;;;;;;;;;;;:31;:33::i;:::-;11476:2;11453:11;:20;11465:7;11453:20;;;;;;;;;;;;:25;;;;;;;;;;;;;;;;;;11549:7;11545:2;11530:27;;11539:4;11530:27;;;;;;;;;;;;10786:778;;;:::o;17996:1140::-;18270:22;18295:32;18325:1;18295:12;:18;18308:4;18295:18;;;;;;;;;;;;;;;:25;;;;:29;;:32;;;;:::i;:::-;18270:57;;18337:18;18358:17;:26;18376:7;18358:26;;;;;;;;;;;;18337:47;;18502:14;18488:10;:28;18484:323;;18532:19;18554:12;:18;18567:4;18554:18;;;;;;;;;;;;;;;18573:14;18554:34;;;;;;;;;;;;;;;;18532:56;;18636:11;18603:12;:18;18616:4;18603:18;;;;;;;;;;;;;;;18622:10;18603:30;;;;;;;;;;;;;;;:44;;;;18752:10;18719:17;:30;18737:11;18719:30;;;;;;;;;;;:43;;;;18484:323;;18893:12;:18;18906:4;18893:18;;;;;;;;;;;;;;;:27;;;;;;;;;;;;:::i;:::-;;17996:1140;;;;:::o;16842:183::-;16955:12;:16;16968:2;16955:16;;;;;;;;;;;;;;;:23;;;;16926:17;:26;16944:7;16926:26;;;;;;;;;;;:52;;;;16988:12;:16;17001:2;16988:16;;;;;;;;;;;;;;;17010:7;16988:30;;39:1:-1;33:3;27:10;23:18;57:10;52:3;45:23;79:10;72:17;;0:93;16988:30:4;;;;;;;;;;;;;;;;;;;;;;16842:183;;:::o;10077:510::-;10232:16;10240:7;10232;:16::i;:::-;10231:17;10223:52;;;;;;;;;;;;;;;;;;;;;;10307:1;10293:16;;:2;:16;;;;10285:53;;;;;;;;;;;;;;;;;;;;;;10450:2;10427:11;:20;10439:7;10427:20;;;;;;;;;;;;:25;;;;;;;;;;;;;;;;;;10462:33;:17;:21;10480:2;10462:21;;;;;;;;;;;;;;;:31;:33::i;:::-;10572:7;10568:2;10547:33;;10564:1;10547:33;;;;;;;;;;;;10077:510;;:::o;17220:161::-;17323:10;:17;;;;17296:15;:24;17312:7;17296:24;;;;;;;;;;;:44;;;;17350:10;17366:7;17350:24;;39:1:-1;33:3;27:10;23:18;57:10;52:3;45:23;79:10;72:17;;0:93;17350:24:4;;;;;;;;;;;;;;;;;;;;;;17220:161;:::o;43271:465:5:-;43321:27;43370:1;43364:2;:7;43360:48;;;43387:10;;;;;;;;;;;;;;;;;;;;;43360:48;43417:6;43426:2;43417:11;;43438:8;43456:66;43468:1;43463;:6;43456:66;;43485:5;;;;;;;43509:2;43504:7;;;;;;;;;43456:66;;;43531:17;43561:3;43551:14;;;;;;;;;;;;;;;;;;;;;;;;;29:1:-1;21:6;17:14;116:4;104:10;96:6;87:34;147:4;139:6;135:17;125:27;;0:156;43551:14:5;;;;43531:34;;43575:6;43590:1;43584:3;:7;43575:16;;43601:100;43614:1;43608:2;:7;43601:100;;43664:2;43659;:7;;;;;;43654:2;:12;43643:25;;43631:4;43636:3;;;;;;;43631:9;;;;;;;;;;;:37;;;;;;;;;;;43688:2;43682:8;;;;;;;;;43601:100;;;43724:4;43710:19;;;;;;43271:465;;;;:::o;39712:166::-;39790:33;39842:29;39852:2;39856;39842:29;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:9;:29::i;:::-;39835:36;;39712:166;;;;:::o;463:616:3:-;523:4;539:12;1038:7;1026:20;1018:28;;1071:1;1064:4;:8;1057:15;;;463:616;;;:::o;12604:171:4:-;12703:1;12667:38;;:15;:24;12683:7;12667:24;;;;;;;;;;;;;;;;;;;;;:38;;;12663:106;;12756:1;12721:15;:24;12737:7;12721:24;;;;;;;;;;;;:37;;;;;;;;;;;;;;;;;;12663:106;12604:171;:::o;1275:108:0:-;1355:21;1374:1;1355:7;:14;;;:18;;:21;;;;:::i;:::-;1338:7;:14;;:38;;;;1275:108;:::o;1180:89::-;1261:1;1243:7;:14;;;:19;;;;;;;;;;;1180:89;:::o;1211:145:1:-;1269:7;1301:1;1296;:6;;1288:15;;;;;;1313:9;1329:1;1325;:5;1313:17;;1348:1;1341:8;;;1211:145;;;;:::o;40282:1020:5:-;40414:33;40459:16;40484:2;40459:28;;40497:16;40522:2;40497:28;;40535:16;40560:2;40535:28;;40573:16;40598:2;40573:28;;40611:16;40636:2;40611:28;;40649:19;40734:3;:10;40721:3;:10;40708:3;:10;40695:3;:10;40682:3;:10;:23;:36;:49;:62;40671:74;;;;;;;;;;;;;;;;;;;;;;;;;29:1:-1;21:6;17:14;116:4;104:10;96:6;87:34;147:4;139:6;135:17;125:27;;0:156;40671:74:5;;;;40649:96;;40755:19;40783:5;40755:34;;40799:6;40808:1;40799:10;;40819:6;40828:1;40819:10;;40848:1;40844:5;;40839:78;40855:3;:10;40851:1;:14;40839:78;;;40900:3;40904:1;40900:6;;;;;;;;;;;;;;;;40886;40893:3;;;;;;40886:11;;;;;;;;;;;:20;;;;;;;;;;;40867:3;;;;;;;40839:78;;;40935:1;40931:5;;40926:78;40942:3;:10;40938:1;:14;40926:78;;;40987:3;40991:1;40987:6;;;;;;;;;;;;;;;;40973;40980:3;;;;;;40973:11;;;;;;;;;;;:20;;;;;;;;;;;40954:3;;;;;;;40926:78;;;41022:1;41018:5;;41013:78;41029:3;:10;41025:1;:14;41013:78;;;41074:3;41078:1;41074:6;;;;;;;;;;;;;;;;41060;41067:3;;;;;;41060:11;;;;;;;;;;;:20;;;;;;;;;;;41041:3;;;;;;;41013:78;;;41109:1;41105:5;;41100:78;41116:3;:10;41112:1;:14;41100:78;;;41161:3;41165:1;41161:6;;;;;;;;;;;;;;;;41147;41154:3;;;;;;41147:11;;;;;;;;;;;:20;;;;;;;;;;;41128:3;;;;;;;41100:78;;;41196:1;41192:5;;41187:78;41203:3;:10;41199:1;:14;41187:78;;;41248:3;41252:1;41248:6;;;;;;;;;;;;;;;;41234;41241:3;;;;;;41234:11;;;;;;;;;;;:20;;;;;;;;;;;41215:3;;;;;;;41187:78;;;41288:6;41274:21;;;;;;;;;;;40282:1020;;;;;;;:::o;486:2144:6:-;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:::i;:::-;;;:::o;:::-;;;;;;;;;;;;;;;;;;;;;:::o;:::-;;;;;;;;;;;;;;;;;;;;;;;;;;;;:::i;:::-;;;;;:::o;:::-;;;;;;;;;;;;;;;;;;;;;;;;;;;:::o;5:130:-1:-;;85:6;72:20;63:29;;97:33;124:5;97:33;;;57:78;;;;;164:673;;298:3;291:4;283:6;279:17;275:27;265:2;;316:1;313;306:12;265:2;340:4;359:97;374:81;448:6;374:81;;;359:97;;;350:106;;473:5;532:6;579:3;571:4;563:6;559:17;554:3;550:27;547:36;544:2;;;596:1;593;586:12;544:2;621:1;606:225;631:6;628:1;625:13;606:225;;;689:3;711:56;763:3;751:10;711:56;;;706:3;699:69;791:4;786:3;782:14;775:21;;819:4;814:3;810:14;803:21;;663:168;653:1;650;646:9;641:14;;606:225;;;610:14;258:579;;;;;;;;864:608;;975:3;968:4;960:6;956:17;952:27;942:2;;993:1;990;983:12;942:2;1017:4;1036:74;1051:58;1102:6;1051:58;;;1036:74;;;1027:83;;1127:5;1186:6;1233:3;1225:4;1217:6;1213:17;1208:3;1204:27;1201:36;1198:2;;;1250:1;1247;1240:12;1198:2;1275:1;1260:206;1285:6;1282:1;1279:13;1260:206;;;1343:3;1365:37;1398:3;1386:10;1365:37;;;1360:3;1353:50;1426:4;1421:3;1417:14;1410:21;;1454:4;1449:3;1445:14;1438:21;;1317:149;1307:1;1304;1300:9;1295:14;;1260:206;;;1264:14;935:537;;;;;;;;1499:616;;1614:3;1607:4;1599:6;1595:17;1591:27;1581:2;;1632:1;1629;1622:12;1581:2;1656:4;1675:78;1690:62;1745:6;1690:62;;;1675:78;;;1666:87;;1770:5;1829:6;1876:3;1868:4;1860:6;1856:17;1851:3;1847:27;1844:36;1841:2;;;1893:1;1890;1883:12;1841:2;1918:1;1903:206;1928:6;1925:1;1922:13;1903:206;;;1986:3;2008:37;2041:3;2029:10;2008:37;;;2003:3;1996:50;2069:4;2064:3;2060:14;2053:21;;2097:4;2092:3;2088:14;2081:21;;1960:149;1950:1;1947;1943:9;1938:14;;1903:206;;;1907:14;1574:541;;;;;;;;2123:124;;2200:6;2187:20;2178:29;;2212:30;2236:5;2212:30;;;2172:75;;;;;2254:128;;2335:6;2329:13;2320:22;;2347:30;2371:5;2347:30;;;2314:68;;;;;2389:130;;2469:6;2456:20;2447:29;;2481:33;2508:5;2481:33;;;2441:78;;;;;2526:128;;2605:6;2592:20;2583:29;;2617:32;2643:5;2617:32;;;2577:77;;;;;2661:132;;2744:6;2738:13;2729:22;;2756:32;2782:5;2756:32;;;2723:70;;;;;2801:440;;2902:3;2895:4;2887:6;2883:17;2879:27;2869:2;;2920:1;2917;2910:12;2869:2;2957:6;2944:20;2979:64;2994:48;3035:6;2994:48;;;2979:64;;;2970:73;;3063:6;3056:5;3049:21;3099:4;3091:6;3087:17;3132:4;3125:5;3121:16;3167:3;3158:6;3153:3;3149:16;3146:25;3143:2;;;3184:1;3181;3174:12;3143:2;3194:41;3228:6;3223:3;3218;3194:41;;;2862:379;;;;;;;;3250:442;;3352:3;3345:4;3337:6;3333:17;3329:27;3319:2;;3370:1;3367;3360:12;3319:2;3407:6;3394:20;3429:65;3444:49;3486:6;3444:49;;;3429:65;;;3420:74;;3514:6;3507:5;3500:21;3550:4;3542:6;3538:17;3583:4;3576:5;3572:16;3618:3;3609:6;3604:3;3600:16;3597:25;3594:2;;;3635:1;3632;3625:12;3594:2;3645:41;3679:6;3674:3;3669;3645:41;;;3312:380;;;;;;;;3700:130;;3780:6;3767:20;3758:29;;3792:33;3819:5;3792:33;;;3752:78;;;;;3837:241;;3941:2;3929:9;3920:7;3916:23;3912:32;3909:2;;;3957:1;3954;3947:12;3909:2;3992:1;4009:53;4054:7;4045:6;4034:9;4030:22;4009:53;;;3999:63;;3971:97;3903:175;;;;;4085:366;;;4206:2;4194:9;4185:7;4181:23;4177:32;4174:2;;;4222:1;4219;4212:12;4174:2;4257:1;4274:53;4319:7;4310:6;4299:9;4295:22;4274:53;;;4264:63;;4236:97;4364:2;4382:53;4427:7;4418:6;4407:9;4403:22;4382:53;;;4372:63;;4343:98;4168:283;;;;;;4458:491;;;;4596:2;4584:9;4575:7;4571:23;4567:32;4564:2;;;4612:1;4609;4602:12;4564:2;4647:1;4664:53;4709:7;4700:6;4689:9;4685:22;4664:53;;;4654:63;;4626:97;4754:2;4772:53;4817:7;4808:6;4797:9;4793:22;4772:53;;;4762:63;;4733:98;4862:2;4880:53;4925:7;4916:6;4905:9;4901:22;4880:53;;;4870:63;;4841:98;4558:391;;;;;;4956:721;;;;;5120:3;5108:9;5099:7;5095:23;5091:33;5088:2;;;5137:1;5134;5127:12;5088:2;5172:1;5189:53;5234:7;5225:6;5214:9;5210:22;5189:53;;;5179:63;;5151:97;5279:2;5297:53;5342:7;5333:6;5322:9;5318:22;5297:53;;;5287:63;;5258:98;5387:2;5405:53;5450:7;5441:6;5430:9;5426:22;5405:53;;;5395:63;;5366:98;5523:2;5512:9;5508:18;5495:32;5547:18;5539:6;5536:30;5533:2;;;5579:1;5576;5569:12;5533:2;5599:62;5653:7;5644:6;5633:9;5629:22;5599:62;;;5589:72;;5474:193;5082:595;;;;;;;;5684:360;;;5802:2;5790:9;5781:7;5777:23;5773:32;5770:2;;;5818:1;5815;5808:12;5770:2;5853:1;5870:53;5915:7;5906:6;5895:9;5891:22;5870:53;;;5860:63;;5832:97;5960:2;5978:50;6020:7;6011:6;6000:9;5996:22;5978:50;;;5968:60;;5939:95;5764:280;;;;;;6051:366;;;6172:2;6160:9;6151:7;6147:23;6143:32;6140:2;;;6188:1;6185;6178:12;6140:2;6223:1;6240:53;6285:7;6276:6;6265:9;6261:22;6240:53;;;6230:63;;6202:97;6330:2;6348:53;6393:7;6384:6;6373:9;6369:22;6348:53;;;6338:63;;6309:98;6134:283;;;;;;6424:1092;;;;;;;6724:3;6712:9;6703:7;6699:23;6695:33;6692:2;;;6741:1;6738;6731:12;6692:2;6776:1;6793:53;6838:7;6829:6;6818:9;6814:22;6793:53;;;6783:63;;6755:97;6883:2;6901:53;6946:7;6937:6;6926:9;6922:22;6901:53;;;6891:63;;6862:98;6991:2;7009:76;7077:7;7068:6;7057:9;7053:22;7009:76;;;6999:86;;6970:121;7122:3;7141:95;7228:7;7219:6;7208:9;7204:22;7141:95;;;7131:105;;7101:141;7273:3;7292:76;7360:7;7351:6;7340:9;7336:22;7292:76;;;7282:86;;7252:122;7405:3;7424:76;7492:7;7483:6;7472:9;7468:22;7424:76;;;7414:86;;7384:122;6686:830;;;;;;;;;7523:235;;7624:2;7612:9;7603:7;7599:23;7595:32;7592:2;;;7640:1;7637;7630:12;7592:2;7675:1;7692:50;7734:7;7725:6;7714:9;7710:22;7692:50;;;7682:60;;7654:94;7586:172;;;;;7765:257;;7877:2;7865:9;7856:7;7852:23;7848:32;7845:2;;;7893:1;7890;7883:12;7845:2;7928:1;7945:61;7998:7;7989:6;7978:9;7974:22;7945:61;;;7935:71;;7907:105;7839:183;;;;;8029:472;;;8160:2;8148:9;8139:7;8135:23;8131:32;8128:2;;;8176:1;8173;8166:12;8128:2;8211:1;8228:53;8273:7;8264:6;8253:9;8249:22;8228:53;;;8218:63;;8190:97;8346:2;8335:9;8331:18;8318:32;8370:18;8362:6;8359:30;8356:2;;;8402:1;8399;8392:12;8356:2;8422:63;8477:7;8468:6;8457:9;8453:22;8422:63;;;8412:73;;8297:194;8122:379;;;;;;8508:701;;;;8665:2;8653:9;8644:7;8640:23;8636:32;8633:2;;;8681:1;8678;8671:12;8633:2;8716:1;8733:53;8778:7;8769:6;8758:9;8754:22;8733:53;;;8723:63;;8695:97;8851:2;8840:9;8836:18;8823:32;8875:18;8867:6;8864:30;8861:2;;;8907:1;8904;8897:12;8861:2;8927:63;8982:7;8973:6;8962:9;8958:22;8927:63;;;8917:73;;8802:194;9055:2;9044:9;9040:18;9027:32;9079:18;9071:6;9068:30;9065:2;;;9111:1;9108;9101:12;9065:2;9131:62;9185:7;9176:6;9165:9;9161:22;9131:62;;;9121:72;;9006:193;8627:582;;;;;;9216:239;;9319:2;9307:9;9298:7;9294:23;9290:32;9287:2;;;9335:1;9332;9325:12;9287:2;9370:1;9387:52;9431:7;9422:6;9411:9;9407:22;9387:52;;;9377:62;;9349:96;9281:174;;;;;9462:261;;9576:2;9564:9;9555:7;9551:23;9547:32;9544:2;;;9592:1;9589;9582:12;9544:2;9627:1;9644:63;9699:7;9690:6;9679:9;9675:22;9644:63;;;9634:73;;9606:107;9538:185;;;;;9730:241;;9834:2;9822:9;9813:7;9809:23;9805:32;9802:2;;;9850:1;9847;9840:12;9802:2;9885:1;9902:53;9947:7;9938:6;9927:9;9923:22;9902:53;;;9892:63;;9864:97;9796:175;;;;;9979:253;;10104:88;10188:3;10180:6;10104:88;;;10221:4;10216:3;10212:14;10198:28;;10097:135;;;;;10241:269;;10374:96;10466:3;10458:6;10374:96;;;10499:4;10494:3;10490:14;10476:28;;10367:143;;;;;10519:173;;10606:46;10648:3;10640:6;10606:46;;;10681:4;10676:3;10672:14;10658:28;;10599:93;;;;;10701:189;;10796:54;10846:3;10838:6;10796:54;;;10879:4;10874:3;10870:14;10856:28;;10789:101;;;;;10898:142;10989:45;11028:5;10989:45;;;10984:3;10977:58;10971:69;;;11047:113;11130:24;11148:5;11130:24;;;11125:3;11118:37;11112:48;;;11206:812;11377:71;11442:5;11377:71;;;11461:103;11557:6;11552:3;11461:103;;;11454:110;;11585:73;11652:5;11585:73;;;11678:7;11706:1;11691:315;11716:6;11713:1;11710:13;11691:315;;;11783:6;11777:13;11804:101;11901:3;11886:13;11804:101;;;11797:108;;11922:77;11992:6;11922:77;;;11912:87;;11748:258;11738:1;11735;11731:9;11726:14;;11691:315;;;11695:14;11356:662;;;;;;12065:856;12254:71;12319:5;12254:71;;;12338:121;12452:6;12447:3;12338:121;;;12331:128;;12480:73;12547:5;12480:73;;;12573:7;12601:1;12586:323;12611:6;12608:1;12605:13;12586:323;;;12678:6;12672:13;12699:109;12804:3;12789:13;12699:109;;;12692:116;;12825:77;12895:6;12825:77;;;12815:87;;12643:266;12633:1;12630;12626:9;12621:14;;12586:323;;;12590:14;12233:688;;;;;;12962:660;13095:52;13141:5;13095:52;;;13160:84;13237:6;13232:3;13160:84;;;13153:91;;13265:54;13313:5;13265:54;;;13339:7;13367:1;13352:258;13377:6;13374:1;13371:13;13352:258;;;13444:6;13438:13;13465:63;13524:3;13509:13;13465:63;;;13458:70;;13545:58;13596:6;13545:58;;;13535:68;;13409:201;13399:1;13396;13392:9;13387:14;;13352:258;;;13356:14;13074:548;;;;;;13663:704;13814:52;13860:5;13814:52;;;13879:102;13974:6;13969:3;13879:102;;;13872:109;;14002:54;14050:5;14002:54;;;14076:7;14104:1;14089:266;14114:6;14111:1;14108:13;14089:266;;;14181:6;14175:13;14202:71;14269:3;14254:13;14202:71;;;14195:78;;14290:58;14341:6;14290:58;;;14280:68;;14146:209;14136:1;14133;14129:9;14124:14;;14089:266;;;14093:14;13793:574;;;;;;14408:624;14527:48;14569:5;14527:48;;;14588:74;14655:6;14650:3;14588:74;;;14581:81;;14683:50;14727:5;14683:50;;;14753:7;14781:1;14766:254;14791:6;14788:1;14785:13;14766:254;;;14858:6;14852:13;14879:63;14938:3;14923:13;14879:63;;;14872:70;;14959:54;15006:6;14959:54;;;14949:64;;14823:197;14813:1;14810;14806:9;14801:14;;14766:254;;;14770:14;14506:526;;;;;;15073:648;15200:48;15242:5;15200:48;;;15261:82;15336:6;15331:3;15261:82;;;15254:89;;15364:50;15408:5;15364:50;;;15434:7;15462:1;15447:262;15472:6;15469:1;15466:13;15447:262;;;15539:6;15533:13;15560:71;15627:3;15612:13;15560:71;;;15553:78;;15648:54;15695:6;15648:54;;;15638:64;;15504:205;15494:1;15491;15487:9;15482:14;;15447:262;;;15451:14;15179:542;;;;;;15729:104;15806:21;15821:5;15806:21;;;15801:3;15794:34;15788:45;;;15840:343;;15950:38;15982:5;15950:38;;;16000:70;16063:6;16058:3;16000:70;;;15993:77;;16075:52;16120:6;16115:3;16108:4;16101:5;16097:16;16075:52;;;16148:29;16170:6;16148:29;;;16143:3;16139:39;16132:46;;15930:253;;;;;;16190:174;16297:61;16352:5;16297:61;;;16292:3;16285:74;16279:85;;;16371:347;;16483:39;16516:5;16483:39;;;16534:71;16598:6;16593:3;16534:71;;;16527:78;;16610:52;16655:6;16650:3;16643:4;16636:5;16632:16;16610:52;;;16683:29;16705:6;16683:29;;;16678:3;16674:39;16667:46;;16463:255;;;;;;16726:321;;16886:67;16950:2;16945:3;16886:67;;;16879:74;;16986:23;16982:1;16977:3;16973:11;16966:44;17038:2;17033:3;17029:12;17022:19;;16872:175;;;;17056:374;;17216:67;17280:2;17275:3;17216:67;;;17209:74;;17316:34;17312:1;17307:3;17303:11;17296:55;17385:7;17380:2;17375:3;17371:12;17364:29;17421:2;17416:3;17412:12;17405:19;;17202:228;;;;17439:392;;17599:67;17663:2;17658:3;17599:67;;;17592:74;;17699:34;17695:1;17690:3;17686:11;17679:55;17768:25;17763:2;17758:3;17754:12;17747:47;17822:2;17817:3;17813:12;17806:19;;17585:246;;;;17840:324;;18000:67;18064:2;18059:3;18000:67;;;17993:74;;18100:26;18096:1;18091:3;18087:11;18080:47;18155:2;18150:3;18146:12;18139:19;;17986:178;;;;18173:382;;18333:67;18397:2;18392:3;18333:67;;;18326:74;;18433:34;18429:1;18424:3;18420:11;18413:55;18502:15;18497:2;18492:3;18488:12;18481:37;18546:2;18541:3;18537:12;18530:19;;18319:236;;;;18564:393;;18724:67;18788:2;18783:3;18724:67;;;18717:74;;18824:34;18820:1;18815:3;18811:11;18804:55;18893:26;18888:2;18883:3;18879:12;18872:48;18948:2;18943:3;18939:12;18932:19;;18710:247;;;;18966:376;;19126:67;19190:2;19185:3;19126:67;;;19119:74;;19226:34;19222:1;19217:3;19213:11;19206:55;19295:9;19290:2;19285:3;19281:12;19274:31;19333:2;19328:3;19324:12;19317:19;;19112:230;;;;19351:372;;19511:67;19575:2;19570:3;19511:67;;;19504:74;;19611:34;19607:1;19602:3;19598:11;19591:55;19680:5;19675:2;19670:3;19666:12;19659:27;19714:2;19709:3;19705:12;19698:19;;19497:226;;;;19732:321;;19892:67;19956:2;19951:3;19892:67;;;19885:74;;19992:23;19988:1;19983:3;19979:11;19972:44;20044:2;20039:3;20035:12;20028:19;;19878:175;;;;20062:322;;20222:67;20286:2;20281:3;20222:67;;;20215:74;;20322:24;20318:1;20313:3;20309:11;20302:45;20375:2;20370:3;20366:12;20359:19;;20208:176;;;;20393:318;;20553:67;20617:2;20612:3;20553:67;;;20546:74;;20653:20;20649:1;20644:3;20640:11;20633:41;20702:2;20697:3;20693:12;20686:19;;20539:172;;;;20720:372;;20880:67;20944:2;20939:3;20880:67;;;20873:74;;20980:34;20976:1;20971:3;20967:11;20960:55;21049:5;21044:2;21039:3;21035:12;21028:27;21083:2;21078:3;21074:12;21067:19;;20866:226;;;;21100:103;21173:24;21191:5;21173:24;;;21168:3;21161:37;21155:48;;;21210:113;21293:24;21311:5;21293:24;;;21288:3;21281:37;21275:48;;;21330:111;21411:24;21429:5;21411:24;;;21406:3;21399:37;21393:48;;;21448:1106;;21873:121;21990:3;21981:6;21873:121;;;22016:2;22011:3;22007:12;22000:19;;22030:159;22185:3;22176:6;22030:159;;;22211:3;22206;22202:13;22195:20;;22226:121;22343:3;22334:6;22226:121;;;22369:2;22364:3;22360:12;22353:19;;22383:121;22500:3;22491:6;22383:121;;;22526:2;22521:3;22517:12;22510:19;;22546:3;22539:10;;21861:693;;;;;;;;22561:213;;22679:2;22668:9;22664:18;22656:26;;22693:71;22761:1;22750:9;22746:17;22737:6;22693:71;;;22650:124;;;;;22781:647;;23009:3;22998:9;22994:19;22986:27;;23024:79;23100:1;23089:9;23085:17;23076:6;23024:79;;;23114:72;23182:2;23171:9;23167:18;23158:6;23114:72;;;23197;23265:2;23254:9;23250:18;23241:6;23197:72;;;23317:9;23311:4;23307:20;23302:2;23291:9;23287:18;23280:48;23342:76;23413:4;23404:6;23342:76;;;23334:84;;22980:448;;;;;;;;23435:324;;23581:2;23570:9;23566:18;23558:26;;23595:71;23663:1;23652:9;23648:17;23639:6;23595:71;;;23677:72;23745:2;23734:9;23730:18;23721:6;23677:72;;;23552:207;;;;;;23766:993;;24190:3;24179:9;24175:19;24167:27;;24205:117;24319:1;24308:9;24304:17;24295:6;24205:117;;;24333:156;24485:2;24474:9;24470:18;24461:6;24333:156;;;24500:119;24614:3;24603:9;24599:19;24590:6;24500:119;;;24630;24744:3;24733:9;24729:19;24720:6;24630:119;;;24161:598;;;;;;;;24766:201;;24878:2;24867:9;24863:18;24855:26;;24892:65;24954:1;24943:9;24939:17;24930:6;24892:65;;;24849:118;;;;;24974:261;;25116:2;25105:9;25101:18;25093:26;;25130:95;25222:1;25211:9;25207:17;25198:6;25130:95;;;25087:148;;;;;25242:301;;25380:2;25369:9;25365:18;25357:26;;25430:9;25424:4;25420:20;25416:1;25405:9;25401:17;25394:47;25455:78;25528:4;25519:6;25455:78;;;25447:86;;25351:192;;;;;25550:407;;25741:2;25730:9;25726:18;25718:26;;25791:9;25785:4;25781:20;25777:1;25766:9;25762:17;25755:47;25816:131;25942:4;25816:131;;;25808:139;;25712:245;;;;25964:407;;26155:2;26144:9;26140:18;26132:26;;26205:9;26199:4;26195:20;26191:1;26180:9;26176:17;26169:47;26230:131;26356:4;26230:131;;;26222:139;;26126:245;;;;26378:407;;26569:2;26558:9;26554:18;26546:26;;26619:9;26613:4;26609:20;26605:1;26594:9;26590:17;26583:47;26644:131;26770:4;26644:131;;;26636:139;;26540:245;;;;26792:407;;26983:2;26972:9;26968:18;26960:26;;27033:9;27027:4;27023:20;27019:1;27008:9;27004:17;26997:47;27058:131;27184:4;27058:131;;;27050:139;;26954:245;;;;27206:407;;27397:2;27386:9;27382:18;27374:26;;27447:9;27441:4;27437:20;27433:1;27422:9;27418:17;27411:47;27472:131;27598:4;27472:131;;;27464:139;;27368:245;;;;27620:407;;27811:2;27800:9;27796:18;27788:26;;27861:9;27855:4;27851:20;27847:1;27836:9;27832:17;27825:47;27886:131;28012:4;27886:131;;;27878:139;;27782:245;;;;28034:407;;28225:2;28214:9;28210:18;28202:26;;28275:9;28269:4;28265:20;28261:1;28250:9;28246:17;28239:47;28300:131;28426:4;28300:131;;;28292:139;;28196:245;;;;28448:407;;28639:2;28628:9;28624:18;28616:26;;28689:9;28683:4;28679:20;28675:1;28664:9;28660:17;28653:47;28714:131;28840:4;28714:131;;;28706:139;;28610:245;;;;28862:407;;29053:2;29042:9;29038:18;29030:26;;29103:9;29097:4;29093:20;29089:1;29078:9;29074:17;29067:47;29128:131;29254:4;29128:131;;;29120:139;;29024:245;;;;29276:407;;29467:2;29456:9;29452:18;29444:26;;29517:9;29511:4;29507:20;29503:1;29492:9;29488:17;29481:47;29542:131;29668:4;29542:131;;;29534:139;;29438:245;;;;29690:407;;29881:2;29870:9;29866:18;29858:26;;29931:9;29925:4;29921:20;29917:1;29906:9;29902:17;29895:47;29956:131;30082:4;29956:131;;;29948:139;;29852:245;;;;30104:407;;30295:2;30284:9;30280:18;30272:26;;30345:9;30339:4;30335:20;30331:1;30320:9;30316:17;30309:47;30370:131;30496:4;30370:131;;;30362:139;;30266:245;;;;30518:213;;30636:2;30625:9;30621:18;30613:26;;30650:71;30718:1;30707:9;30703:17;30694:6;30650:71;;;30607:124;;;;;30738:256;;30800:2;30794:9;30784:19;;30838:4;30830:6;30826:17;30937:6;30925:10;30922:22;30901:18;30889:10;30886:34;30883:62;30880:2;;;30958:1;30955;30948:12;30880:2;30978:10;30974:2;30967:22;30778:216;;;;;31001:263;;31177:18;31169:6;31166:30;31163:2;;;31209:1;31206;31199:12;31163:2;31244:4;31236:6;31232:17;31224:25;;31100:164;;;;31271:240;;31424:18;31416:6;31413:30;31410:2;;;31456:1;31453;31446:12;31410:2;31491:4;31483:6;31479:17;31471:25;;31347:164;;;;31518:244;;31675:18;31667:6;31664:30;31661:2;;;31707:1;31704;31697:12;31661:2;31742:4;31734:6;31730:17;31722:25;;31598:164;;;;31769:321;;31912:18;31904:6;31901:30;31898:2;;;31944:1;31941;31934:12;31898:2;32011:4;32007:9;32000:4;31992:6;31988:17;31984:33;31976:41;;32075:4;32069;32065:15;32057:23;;31835:255;;;;32097:322;;32241:18;32233:6;32230:30;32227:2;;;32273:1;32270;32263:12;32227:2;32340:4;32336:9;32329:4;32321:6;32317:17;32313:33;32305:41;;32404:4;32398;32394:15;32386:23;;32164:255;;;;32426:116;;32529:3;32521:11;;32515:27;;;;32549:93;;32629:3;32621:11;;32615:27;;;;32649:97;;32733:3;32725:11;;32719:27;;;;32753:127;;32866:4;32856:14;;32844:36;;;;32887:104;;32977:4;32967:14;;32955:36;;;;32998:108;;33092:4;33082:14;;33070:36;;;;33113:121;;33206:5;33200:12;33190:22;;33171:63;;;;33241:122;;33335:5;33329:12;33319:22;;33300:63;;;;33370:125;;33485:4;33480:3;33476:14;33468:22;;33462:33;;;;33502:102;;33594:4;33589:3;33585:14;33577:22;;33571:33;;;;33611:106;;33707:4;33702:3;33698:14;33690:22;;33684:33;;;;33725:159;;33875:3;33860:18;;33853:31;;;;;33893:177;;34061:3;34046:18;;34039:31;;;;;34079:130;;34200:3;34185:18;;34178:31;;;;;34218:140;;34349:3;34334:18;;34327:31;;;;;34367:138;;34496:3;34481:18;;34474:31;;;;;34514:158;;34663:3;34648:18;;34641:31;;;;;34681:162;;34795:6;34790:3;34783:19;34832:4;34827:3;34823:14;34808:29;;34776:67;;;;;34852:163;;34967:6;34962:3;34955:19;35004:4;34999:3;34995:14;34980:29;;34948:67;;;;;35023:91;;35085:24;35103:5;35085:24;;;35074:35;;35068:46;;;;35121:85;;35194:5;35187:13;35180:21;35169:32;;35163:43;;;;35213:72;;35275:5;35264:16;;35258:27;;;;35292:144;;35364:66;35357:5;35353:78;35342:89;;35336:100;;;;35443:121;;35516:42;35509:5;35505:54;35494:65;;35488:76;;;;35571:72;;35633:5;35622:16;;35616:27;;;;35650:129;;35737:37;35768:5;35737:37;;;35724:50;;35718:61;;;;35786:169;;35889:61;35944:5;35889:61;;;35876:74;;35870:85;;;;35962:132;;36065:24;36083:5;36065:24;;;36052:37;;36046:48;;;;36101:121;;36180:37;36211:5;36180:37;;;36167:50;;36161:61;;;;36229:108;;36308:24;36326:5;36308:24;;;36295:37;;36289:48;;;;36345:145;36426:6;36421:3;36416;36403:30;36482:1;36473:6;36468:3;36464:16;36457:27;36396:94;;;;36499:268;36564:1;36571:101;36585:6;36582:1;36579:13;36571:101;;;36661:1;36656:3;36652:11;36646:18;36642:1;36637:3;36633:11;36626:39;36607:2;36604:1;36600:10;36595:15;;36571:101;;;36687:6;36684:1;36681:13;36678:2;;;36752:1;36743:6;36738:3;36734:16;36727:27;36678:2;36548:219;;;;;36775:97;;36863:2;36859:7;36854:2;36847:5;36843:14;36839:28;36829:38;;36823:49;;;;36880:117;36949:24;36967:5;36949:24;;;36942:5;36939:35;36929:2;;36988:1;36985;36978:12;36929:2;36923:74;;37004:111;37070:21;37085:5;37070:21;;;37063:5;37060:32;37050:2;;37106:1;37103;37096:12;37050:2;37044:71;;37122:117;37191:24;37209:5;37191:24;;;37184:5;37181:35;37171:2;;37230:1;37227;37220:12;37171:2;37165:74;;37246:115;37314:23;37331:5;37314:23;;;37307:5;37304:34;37294:2;;37352:1;37349;37342:12;37294:2;37288:73;;37368:117;37437:24;37455:5;37437:24;;;37430:5;37427:35;37417:2;;37476:1;37473;37466:12;37417:2;37411:74;",
  "source": "pragma solidity >0.4.24;\npragma experimental ABIEncoderV2;\n\n// pragma solidity ^0.5.16;\n\n// pragma solidity 0.5.11;\n// pragma solidity >=0.4.21 <0.6.0;\n\nimport {ERC721HouseTitle} from \"./ERC721Mintable.sol\";\nimport \"./verifier.sol\";\n\n// TODO define a contract call to the zokrates generated solidity contract <Verifier> or <renamedVerifier>\ncontract ISquareVerifier is Verifier {\n\n}\n\n// TODO define another contract named SolnSquareVerifier that inherits from your ERC721Mintable class\ncontract SolnSquareVerifier is ERC721HouseTitle {\n    ISquareVerifier public squareContract;\n\n    constructor(address verifierContractAddress) public ERC721HouseTitle() {\n        squareContract = ISquareVerifier(verifierContractAddress);\n    }\n\n    // TODO define a solutions struct that can hold an index & an address\n    struct Solution {\n        uint256 index;\n        address solvedByAddress;\n    }\n\n    // TODO define an array of the above struct\n    Solution[] solutions;\n\n    // TODO define a mapping to store unique solutions submitted\n    mapping(bytes32 => Solution) private uniqueSolutions;\n\n    // TODO Create an event to emit when a solution is added\n    event SolutionAdded(address to, uint256 index);\n\n    // TODO Create a function to add the solutions to the array and emit the event\n    function addSolution(\n        address _solvedByAddress,\n        uint256 _index,\n        bytes32 _hashKey\n    ) internal {\n        Solution memory _solution = Solution({\n            index: _index,\n            solvedByAddress: _solvedByAddress\n        });\n        solutions.push(_solution);\n        uniqueSolutions[_hashKey] = _solution;\n        emit SolutionAdded(_solvedByAddress, _index);\n    }\n\n    // TODO Create a function to mint new NFT only after the solution has been verified\n    function mintNewNFT(\n        address _to,\n        uint256 _tokenId,\n        uint256[2] memory a,\n        uint256[2][2] memory b,\n        uint256[2] memory c,\n        uint256[2] memory input\n    ) public {\n        // hash solution to get key\n        bytes32 _hashKey = keccak256(abi.encodePacked(a, b, c, input));\n        //  - make sure the solution is unique (has not been used before)\n        require(\n            uniqueSolutions[_hashKey].solvedByAddress == address(0),\n            \"Error! solution has already been used\"\n        );\n        //  verify solution\n        require(\n            squareContract.verifyTx(a, b, c, input),\n            \"Error! solution can not be verified\"\n        );\n\n        addSolution(_to, _tokenId, _hashKey);\n        //  - make sure you handle metadata as well as tokenSuplly\n        super.mint(_to, _tokenId);\n    }\n}\n",
  "sourcePath": "/Users/hanif/Dev/blockchain/udacity/projects/blockchain-mintable-housing/eth-contracts/contracts/SolnSquareVerifier.sol",
  "ast": {
    "absolutePath": "project:/contracts/SolnSquareVerifier.sol",
    "exportedSymbols": {
      "ISquareVerifier": [
        7634
      ],
      "SolnSquareVerifier": [
        7779
      ]
    },
    "id": 7780,
    "nodeType": "SourceUnit",
    "nodes": [
      {
        "id": 7627,
        "literals": [
          "solidity",
          ">",
          "0.4",
          ".24"
        ],
        "nodeType": "PragmaDirective",
        "src": "0:24:6"
      },
      {
        "id": 7628,
        "literals": [
          "experimental",
          "ABIEncoderV2"
        ],
        "nodeType": "PragmaDirective",
        "src": "25:33:6"
      },
      {
        "absolutePath": "project:/contracts/ERC721Mintable.sol",
        "file": "./ERC721Mintable.sol",
        "id": 7630,
        "nodeType": "ImportDirective",
        "scope": 7780,
        "sourceUnit": 1358,
        "src": "153:54:6",
        "symbolAliases": [
          {
            "foreign": 7629,
            "local": null
          }
        ],
        "unitAlias": ""
      },
      {
        "absolutePath": "project:/contracts/verifier.sol",
        "file": "./verifier.sol",
        "id": 7631,
        "nodeType": "ImportDirective",
        "scope": 7780,
        "sourceUnit": 10325,
        "src": "208:24:6",
        "symbolAliases": [],
        "unitAlias": ""
      },
      {
        "baseContracts": [
          {
            "arguments": null,
            "baseName": {
              "contractScope": null,
              "id": 7632,
              "name": "Verifier",
              "nodeType": "UserDefinedTypeName",
              "referencedDeclaration": 10324,
              "src": "369:8:6",
              "typeDescriptions": {
                "typeIdentifier": "t_contract$_Verifier_$10324",
                "typeString": "contract Verifier"
              }
            },
            "id": 7633,
            "nodeType": "InheritanceSpecifier",
            "src": "369:8:6"
          }
        ],
        "contractDependencies": [
          10324
        ],
        "contractKind": "contract",
        "documentation": null,
        "fullyImplemented": true,
        "id": 7634,
        "linearizedBaseContracts": [
          7634,
          10324
        ],
        "name": "ISquareVerifier",
        "nodeType": "ContractDefinition",
        "nodes": [],
        "scope": 7780,
        "src": "341:41:6"
      },
      {
        "baseContracts": [
          {
            "arguments": null,
            "baseName": {
              "contractScope": null,
              "id": 7635,
              "name": "ERC721HouseTitle",
              "nodeType": "UserDefinedTypeName",
              "referencedDeclaration": 1357,
              "src": "517:16:6",
              "typeDescriptions": {
                "typeIdentifier": "t_contract$_ERC721HouseTitle_$1357",
                "typeString": "contract ERC721HouseTitle"
              }
            },
            "id": 7636,
            "nodeType": "InheritanceSpecifier",
            "src": "517:16:6"
          }
        ],
        "contractDependencies": [
          289,
          368,
          414,
          914,
          1212,
          1322,
          1357,
          7625
        ],
        "contractKind": "contract",
        "documentation": null,
        "fullyImplemented": true,
        "id": 7779,
        "linearizedBaseContracts": [
          7779,
          1357,
          1322,
          7625,
          1212,
          914,
          414,
          368,
          289
        ],
        "name": "SolnSquareVerifier",
        "nodeType": "ContractDefinition",
        "nodes": [
          {
            "constant": false,
            "id": 7638,
            "name": "squareContract",
            "nodeType": "VariableDeclaration",
            "scope": 7779,
            "src": "540:37:6",
            "stateVariable": true,
            "storageLocation": "default",
            "typeDescriptions": {
              "typeIdentifier": "t_contract$_ISquareVerifier_$7634",
              "typeString": "contract ISquareVerifier"
            },
            "typeName": {
              "contractScope": null,
              "id": 7637,
              "name": "ISquareVerifier",
              "nodeType": "UserDefinedTypeName",
              "referencedDeclaration": 7634,
              "src": "540:15:6",
              "typeDescriptions": {
                "typeIdentifier": "t_contract$_ISquareVerifier_$7634",
                "typeString": "contract ISquareVerifier"
              }
            },
            "value": null,
            "visibility": "public"
          },
          {
            "body": {
              "id": 7651,
              "nodeType": "Block",
              "src": "655:74:6",
              "statements": [
                {
                  "expression": {
                    "argumentTypes": null,
                    "id": 7649,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "lValueRequested": false,
                    "leftHandSide": {
                      "argumentTypes": null,
                      "id": 7645,
                      "name": "squareContract",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [],
                      "referencedDeclaration": 7638,
                      "src": "665:14:6",
                      "typeDescriptions": {
                        "typeIdentifier": "t_contract$_ISquareVerifier_$7634",
                        "typeString": "contract ISquareVerifier"
                      }
                    },
                    "nodeType": "Assignment",
                    "operator": "=",
                    "rightHandSide": {
                      "argumentTypes": null,
                      "arguments": [
                        {
                          "argumentTypes": null,
                          "id": 7647,
                          "name": "verifierContractAddress",
                          "nodeType": "Identifier",
                          "overloadedDeclarations": [],
                          "referencedDeclaration": 7640,
                          "src": "698:23:6",
                          "typeDescriptions": {
                            "typeIdentifier": "t_address",
                            "typeString": "address"
                          }
                        }
                      ],
                      "expression": {
                        "argumentTypes": [
                          {
                            "typeIdentifier": "t_address",
                            "typeString": "address"
                          }
                        ],
                        "id": 7646,
                        "name": "ISquareVerifier",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 7634,
                        "src": "682:15:6",
                        "typeDescriptions": {
                          "typeIdentifier": "t_type$_t_contract$_ISquareVerifier_$7634_$",
                          "typeString": "type(contract ISquareVerifier)"
                        }
                      },
                      "id": 7648,
                      "isConstant": false,
                      "isLValue": false,
                      "isPure": false,
                      "kind": "typeConversion",
                      "lValueRequested": false,
                      "names": [],
                      "nodeType": "FunctionCall",
                      "src": "682:40:6",
                      "typeDescriptions": {
                        "typeIdentifier": "t_contract$_ISquareVerifier_$7634",
                        "typeString": "contract ISquareVerifier"
                      }
                    },
                    "src": "665:57:6",
                    "typeDescriptions": {
                      "typeIdentifier": "t_contract$_ISquareVerifier_$7634",
                      "typeString": "contract ISquareVerifier"
                    }
                  },
                  "id": 7650,
                  "nodeType": "ExpressionStatement",
                  "src": "665:57:6"
                }
              ]
            },
            "documentation": null,
            "id": 7652,
            "implemented": true,
            "kind": "constructor",
            "modifiers": [
              {
                "arguments": [],
                "id": 7643,
                "modifierName": {
                  "argumentTypes": null,
                  "id": 7642,
                  "name": "ERC721HouseTitle",
                  "nodeType": "Identifier",
                  "overloadedDeclarations": [],
                  "referencedDeclaration": 1357,
                  "src": "636:16:6",
                  "typeDescriptions": {
                    "typeIdentifier": "t_type$_t_contract$_ERC721HouseTitle_$1357_$",
                    "typeString": "type(contract ERC721HouseTitle)"
                  }
                },
                "nodeType": "ModifierInvocation",
                "src": "636:18:6"
              }
            ],
            "name": "",
            "nodeType": "FunctionDefinition",
            "parameters": {
              "id": 7641,
              "nodeType": "ParameterList",
              "parameters": [
                {
                  "constant": false,
                  "id": 7640,
                  "name": "verifierContractAddress",
                  "nodeType": "VariableDeclaration",
                  "scope": 7652,
                  "src": "596:31:6",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_address",
                    "typeString": "address"
                  },
                  "typeName": {
                    "id": 7639,
                    "name": "address",
                    "nodeType": "ElementaryTypeName",
                    "src": "596:7:6",
                    "stateMutability": "nonpayable",
                    "typeDescriptions": {
                      "typeIdentifier": "t_address",
                      "typeString": "address"
                    }
                  },
                  "value": null,
                  "visibility": "internal"
                }
              ],
              "src": "595:33:6"
            },
            "returnParameters": {
              "id": 7644,
              "nodeType": "ParameterList",
              "parameters": [],
              "src": "655:0:6"
            },
            "scope": 7779,
            "src": "584:145:6",
            "stateMutability": "nonpayable",
            "superFunction": null,
            "visibility": "public"
          },
          {
            "canonicalName": "SolnSquareVerifier.Solution",
            "id": 7657,
            "members": [
              {
                "constant": false,
                "id": 7654,
                "name": "index",
                "nodeType": "VariableDeclaration",
                "scope": 7657,
                "src": "835:13:6",
                "stateVariable": false,
                "storageLocation": "default",
                "typeDescriptions": {
                  "typeIdentifier": "t_uint256",
                  "typeString": "uint256"
                },
                "typeName": {
                  "id": 7653,
                  "name": "uint256",
                  "nodeType": "ElementaryTypeName",
                  "src": "835:7:6",
                  "typeDescriptions": {
                    "typeIdentifier": "t_uint256",
                    "typeString": "uint256"
                  }
                },
                "value": null,
                "visibility": "internal"
              },
              {
                "constant": false,
                "id": 7656,
                "name": "solvedByAddress",
                "nodeType": "VariableDeclaration",
                "scope": 7657,
                "src": "858:23:6",
                "stateVariable": false,
                "storageLocation": "default",
                "typeDescriptions": {
                  "typeIdentifier": "t_address",
                  "typeString": "address"
                },
                "typeName": {
                  "id": 7655,
                  "name": "address",
                  "nodeType": "ElementaryTypeName",
                  "src": "858:7:6",
                  "stateMutability": "nonpayable",
                  "typeDescriptions": {
                    "typeIdentifier": "t_address",
                    "typeString": "address"
                  }
                },
                "value": null,
                "visibility": "internal"
              }
            ],
            "name": "Solution",
            "nodeType": "StructDefinition",
            "scope": 7779,
            "src": "809:79:6",
            "visibility": "public"
          },
          {
            "constant": false,
            "id": 7660,
            "name": "solutions",
            "nodeType": "VariableDeclaration",
            "scope": 7779,
            "src": "942:20:6",
            "stateVariable": true,
            "storageLocation": "default",
            "typeDescriptions": {
              "typeIdentifier": "t_array$_t_struct$_Solution_$7657_storage_$dyn_storage",
              "typeString": "struct SolnSquareVerifier.Solution[]"
            },
            "typeName": {
              "baseType": {
                "contractScope": null,
                "id": 7658,
                "name": "Solution",
                "nodeType": "UserDefinedTypeName",
                "referencedDeclaration": 7657,
                "src": "942:8:6",
                "typeDescriptions": {
                  "typeIdentifier": "t_struct$_Solution_$7657_storage_ptr",
                  "typeString": "struct SolnSquareVerifier.Solution"
                }
              },
              "id": 7659,
              "length": null,
              "nodeType": "ArrayTypeName",
              "src": "942:10:6",
              "typeDescriptions": {
                "typeIdentifier": "t_array$_t_struct$_Solution_$7657_storage_$dyn_storage_ptr",
                "typeString": "struct SolnSquareVerifier.Solution[]"
              }
            },
            "value": null,
            "visibility": "internal"
          },
          {
            "constant": false,
            "id": 7664,
            "name": "uniqueSolutions",
            "nodeType": "VariableDeclaration",
            "scope": 7779,
            "src": "1034:52:6",
            "stateVariable": true,
            "storageLocation": "default",
            "typeDescriptions": {
              "typeIdentifier": "t_mapping$_t_bytes32_$_t_struct$_Solution_$7657_storage_$",
              "typeString": "mapping(bytes32 => struct SolnSquareVerifier.Solution)"
            },
            "typeName": {
              "id": 7663,
              "keyType": {
                "id": 7661,
                "name": "bytes32",
                "nodeType": "ElementaryTypeName",
                "src": "1042:7:6",
                "typeDescriptions": {
                  "typeIdentifier": "t_bytes32",
                  "typeString": "bytes32"
                }
              },
              "nodeType": "Mapping",
              "src": "1034:28:6",
              "typeDescriptions": {
                "typeIdentifier": "t_mapping$_t_bytes32_$_t_struct$_Solution_$7657_storage_$",
                "typeString": "mapping(bytes32 => struct SolnSquareVerifier.Solution)"
              },
              "valueType": {
                "contractScope": null,
                "id": 7662,
                "name": "Solution",
                "nodeType": "UserDefinedTypeName",
                "referencedDeclaration": 7657,
                "src": "1053:8:6",
                "typeDescriptions": {
                  "typeIdentifier": "t_struct$_Solution_$7657_storage_ptr",
                  "typeString": "struct SolnSquareVerifier.Solution"
                }
              }
            },
            "value": null,
            "visibility": "private"
          },
          {
            "anonymous": false,
            "documentation": null,
            "id": 7670,
            "name": "SolutionAdded",
            "nodeType": "EventDefinition",
            "parameters": {
              "id": 7669,
              "nodeType": "ParameterList",
              "parameters": [
                {
                  "constant": false,
                  "id": 7666,
                  "indexed": false,
                  "name": "to",
                  "nodeType": "VariableDeclaration",
                  "scope": 7670,
                  "src": "1174:10:6",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_address",
                    "typeString": "address"
                  },
                  "typeName": {
                    "id": 7665,
                    "name": "address",
                    "nodeType": "ElementaryTypeName",
                    "src": "1174:7:6",
                    "stateMutability": "nonpayable",
                    "typeDescriptions": {
                      "typeIdentifier": "t_address",
                      "typeString": "address"
                    }
                  },
                  "value": null,
                  "visibility": "internal"
                },
                {
                  "constant": false,
                  "id": 7668,
                  "indexed": false,
                  "name": "index",
                  "nodeType": "VariableDeclaration",
                  "scope": 7670,
                  "src": "1186:13:6",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_uint256",
                    "typeString": "uint256"
                  },
                  "typeName": {
                    "id": 7667,
                    "name": "uint256",
                    "nodeType": "ElementaryTypeName",
                    "src": "1186:7:6",
                    "typeDescriptions": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    }
                  },
                  "value": null,
                  "visibility": "internal"
                }
              ],
              "src": "1173:27:6"
            },
            "src": "1154:47:6"
          },
          {
            "body": {
              "id": 7703,
              "nodeType": "Block",
              "src": "1410:275:6",
              "statements": [
                {
                  "assignments": [
                    7680
                  ],
                  "declarations": [
                    {
                      "constant": false,
                      "id": 7680,
                      "name": "_solution",
                      "nodeType": "VariableDeclaration",
                      "scope": 7703,
                      "src": "1420:25:6",
                      "stateVariable": false,
                      "storageLocation": "memory",
                      "typeDescriptions": {
                        "typeIdentifier": "t_struct$_Solution_$7657_memory_ptr",
                        "typeString": "struct SolnSquareVerifier.Solution"
                      },
                      "typeName": {
                        "contractScope": null,
                        "id": 7679,
                        "name": "Solution",
                        "nodeType": "UserDefinedTypeName",
                        "referencedDeclaration": 7657,
                        "src": "1420:8:6",
                        "typeDescriptions": {
                          "typeIdentifier": "t_struct$_Solution_$7657_storage_ptr",
                          "typeString": "struct SolnSquareVerifier.Solution"
                        }
                      },
                      "value": null,
                      "visibility": "internal"
                    }
                  ],
                  "id": 7685,
                  "initialValue": {
                    "argumentTypes": null,
                    "arguments": [
                      {
                        "argumentTypes": null,
                        "id": 7682,
                        "name": "_index",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 7674,
                        "src": "1478:6:6",
                        "typeDescriptions": {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        }
                      },
                      {
                        "argumentTypes": null,
                        "id": 7683,
                        "name": "_solvedByAddress",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 7672,
                        "src": "1515:16:6",
                        "typeDescriptions": {
                          "typeIdentifier": "t_address",
                          "typeString": "address"
                        }
                      }
                    ],
                    "expression": {
                      "argumentTypes": [
                        {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        },
                        {
                          "typeIdentifier": "t_address",
                          "typeString": "address"
                        }
                      ],
                      "id": 7681,
                      "name": "Solution",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [],
                      "referencedDeclaration": 7657,
                      "src": "1448:8:6",
                      "typeDescriptions": {
                        "typeIdentifier": "t_type$_t_struct$_Solution_$7657_storage_ptr_$",
                        "typeString": "type(struct SolnSquareVerifier.Solution storage pointer)"
                      }
                    },
                    "id": 7684,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "kind": "structConstructorCall",
                    "lValueRequested": false,
                    "names": [
                      "index",
                      "solvedByAddress"
                    ],
                    "nodeType": "FunctionCall",
                    "src": "1448:94:6",
                    "typeDescriptions": {
                      "typeIdentifier": "t_struct$_Solution_$7657_memory",
                      "typeString": "struct SolnSquareVerifier.Solution memory"
                    }
                  },
                  "nodeType": "VariableDeclarationStatement",
                  "src": "1420:122:6"
                },
                {
                  "expression": {
                    "argumentTypes": null,
                    "arguments": [
                      {
                        "argumentTypes": null,
                        "id": 7689,
                        "name": "_solution",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 7680,
                        "src": "1567:9:6",
                        "typeDescriptions": {
                          "typeIdentifier": "t_struct$_Solution_$7657_memory_ptr",
                          "typeString": "struct SolnSquareVerifier.Solution memory"
                        }
                      }
                    ],
                    "expression": {
                      "argumentTypes": [
                        {
                          "typeIdentifier": "t_struct$_Solution_$7657_memory_ptr",
                          "typeString": "struct SolnSquareVerifier.Solution memory"
                        }
                      ],
                      "expression": {
                        "argumentTypes": null,
                        "id": 7686,
                        "name": "solutions",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 7660,
                        "src": "1552:9:6",
                        "typeDescriptions": {
                          "typeIdentifier": "t_array$_t_struct$_Solution_$7657_storage_$dyn_storage",
                          "typeString": "struct SolnSquareVerifier.Solution storage ref[] storage ref"
                        }
                      },
                      "id": 7688,
                      "isConstant": false,
                      "isLValue": false,
                      "isPure": false,
                      "lValueRequested": false,
                      "memberName": "push",
                      "nodeType": "MemberAccess",
                      "referencedDeclaration": null,
                      "src": "1552:14:6",
                      "typeDescriptions": {
                        "typeIdentifier": "t_function_arraypush_nonpayable$_t_struct$_Solution_$7657_storage_$returns$_t_uint256_$",
                        "typeString": "function (struct SolnSquareVerifier.Solution storage ref) returns (uint256)"
                      }
                    },
                    "id": 7690,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "kind": "functionCall",
                    "lValueRequested": false,
                    "names": [],
                    "nodeType": "FunctionCall",
                    "src": "1552:25:6",
                    "typeDescriptions": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    }
                  },
                  "id": 7691,
                  "nodeType": "ExpressionStatement",
                  "src": "1552:25:6"
                },
                {
                  "expression": {
                    "argumentTypes": null,
                    "id": 7696,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "lValueRequested": false,
                    "leftHandSide": {
                      "argumentTypes": null,
                      "baseExpression": {
                        "argumentTypes": null,
                        "id": 7692,
                        "name": "uniqueSolutions",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 7664,
                        "src": "1587:15:6",
                        "typeDescriptions": {
                          "typeIdentifier": "t_mapping$_t_bytes32_$_t_struct$_Solution_$7657_storage_$",
                          "typeString": "mapping(bytes32 => struct SolnSquareVerifier.Solution storage ref)"
                        }
                      },
                      "id": 7694,
                      "indexExpression": {
                        "argumentTypes": null,
                        "id": 7693,
                        "name": "_hashKey",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 7676,
                        "src": "1603:8:6",
                        "typeDescriptions": {
                          "typeIdentifier": "t_bytes32",
                          "typeString": "bytes32"
                        }
                      },
                      "isConstant": false,
                      "isLValue": true,
                      "isPure": false,
                      "lValueRequested": true,
                      "nodeType": "IndexAccess",
                      "src": "1587:25:6",
                      "typeDescriptions": {
                        "typeIdentifier": "t_struct$_Solution_$7657_storage",
                        "typeString": "struct SolnSquareVerifier.Solution storage ref"
                      }
                    },
                    "nodeType": "Assignment",
                    "operator": "=",
                    "rightHandSide": {
                      "argumentTypes": null,
                      "id": 7695,
                      "name": "_solution",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [],
                      "referencedDeclaration": 7680,
                      "src": "1615:9:6",
                      "typeDescriptions": {
                        "typeIdentifier": "t_struct$_Solution_$7657_memory_ptr",
                        "typeString": "struct SolnSquareVerifier.Solution memory"
                      }
                    },
                    "src": "1587:37:6",
                    "typeDescriptions": {
                      "typeIdentifier": "t_struct$_Solution_$7657_storage",
                      "typeString": "struct SolnSquareVerifier.Solution storage ref"
                    }
                  },
                  "id": 7697,
                  "nodeType": "ExpressionStatement",
                  "src": "1587:37:6"
                },
                {
                  "eventCall": {
                    "argumentTypes": null,
                    "arguments": [
                      {
                        "argumentTypes": null,
                        "id": 7699,
                        "name": "_solvedByAddress",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 7672,
                        "src": "1653:16:6",
                        "typeDescriptions": {
                          "typeIdentifier": "t_address",
                          "typeString": "address"
                        }
                      },
                      {
                        "argumentTypes": null,
                        "id": 7700,
                        "name": "_index",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 7674,
                        "src": "1671:6:6",
                        "typeDescriptions": {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        }
                      }
                    ],
                    "expression": {
                      "argumentTypes": [
                        {
                          "typeIdentifier": "t_address",
                          "typeString": "address"
                        },
                        {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        }
                      ],
                      "id": 7698,
                      "name": "SolutionAdded",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [],
                      "referencedDeclaration": 7670,
                      "src": "1639:13:6",
                      "typeDescriptions": {
                        "typeIdentifier": "t_function_event_nonpayable$_t_address_$_t_uint256_$returns$__$",
                        "typeString": "function (address,uint256)"
                      }
                    },
                    "id": 7701,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "kind": "functionCall",
                    "lValueRequested": false,
                    "names": [],
                    "nodeType": "FunctionCall",
                    "src": "1639:39:6",
                    "typeDescriptions": {
                      "typeIdentifier": "t_tuple$__$",
                      "typeString": "tuple()"
                    }
                  },
                  "id": 7702,
                  "nodeType": "EmitStatement",
                  "src": "1634:44:6"
                }
              ]
            },
            "documentation": null,
            "id": 7704,
            "implemented": true,
            "kind": "function",
            "modifiers": [],
            "name": "addSolution",
            "nodeType": "FunctionDefinition",
            "parameters": {
              "id": 7677,
              "nodeType": "ParameterList",
              "parameters": [
                {
                  "constant": false,
                  "id": 7672,
                  "name": "_solvedByAddress",
                  "nodeType": "VariableDeclaration",
                  "scope": 7704,
                  "src": "1320:24:6",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_address",
                    "typeString": "address"
                  },
                  "typeName": {
                    "id": 7671,
                    "name": "address",
                    "nodeType": "ElementaryTypeName",
                    "src": "1320:7:6",
                    "stateMutability": "nonpayable",
                    "typeDescriptions": {
                      "typeIdentifier": "t_address",
                      "typeString": "address"
                    }
                  },
                  "value": null,
                  "visibility": "internal"
                },
                {
                  "constant": false,
                  "id": 7674,
                  "name": "_index",
                  "nodeType": "VariableDeclaration",
                  "scope": 7704,
                  "src": "1354:14:6",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_uint256",
                    "typeString": "uint256"
                  },
                  "typeName": {
                    "id": 7673,
                    "name": "uint256",
                    "nodeType": "ElementaryTypeName",
                    "src": "1354:7:6",
                    "typeDescriptions": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    }
                  },
                  "value": null,
                  "visibility": "internal"
                },
                {
                  "constant": false,
                  "id": 7676,
                  "name": "_hashKey",
                  "nodeType": "VariableDeclaration",
                  "scope": 7704,
                  "src": "1378:16:6",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_bytes32",
                    "typeString": "bytes32"
                  },
                  "typeName": {
                    "id": 7675,
                    "name": "bytes32",
                    "nodeType": "ElementaryTypeName",
                    "src": "1378:7:6",
                    "typeDescriptions": {
                      "typeIdentifier": "t_bytes32",
                      "typeString": "bytes32"
                    }
                  },
                  "value": null,
                  "visibility": "internal"
                }
              ],
              "src": "1310:90:6"
            },
            "returnParameters": {
              "id": 7678,
              "nodeType": "ParameterList",
              "parameters": [],
              "src": "1410:0:6"
            },
            "scope": 7779,
            "src": "1290:395:6",
            "stateMutability": "nonpayable",
            "superFunction": null,
            "visibility": "internal"
          },
          {
            "body": {
              "id": 7777,
              "nodeType": "Block",
              "src": "1982:646:6",
              "statements": [
                {
                  "assignments": [
                    7730
                  ],
                  "declarations": [
                    {
                      "constant": false,
                      "id": 7730,
                      "name": "_hashKey",
                      "nodeType": "VariableDeclaration",
                      "scope": 7777,
                      "src": "2028:16:6",
                      "stateVariable": false,
                      "storageLocation": "default",
                      "typeDescriptions": {
                        "typeIdentifier": "t_bytes32",
                        "typeString": "bytes32"
                      },
                      "typeName": {
                        "id": 7729,
                        "name": "bytes32",
                        "nodeType": "ElementaryTypeName",
                        "src": "2028:7:6",
                        "typeDescriptions": {
                          "typeIdentifier": "t_bytes32",
                          "typeString": "bytes32"
                        }
                      },
                      "value": null,
                      "visibility": "internal"
                    }
                  ],
                  "id": 7740,
                  "initialValue": {
                    "argumentTypes": null,
                    "arguments": [
                      {
                        "argumentTypes": null,
                        "arguments": [
                          {
                            "argumentTypes": null,
                            "id": 7734,
                            "name": "a",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 7712,
                            "src": "2074:1:6",
                            "typeDescriptions": {
                              "typeIdentifier": "t_array$_t_uint256_$2_memory_ptr",
                              "typeString": "uint256[2] memory"
                            }
                          },
                          {
                            "argumentTypes": null,
                            "id": 7735,
                            "name": "b",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 7718,
                            "src": "2077:1:6",
                            "typeDescriptions": {
                              "typeIdentifier": "t_array$_t_array$_t_uint256_$2_memory_$2_memory_ptr",
                              "typeString": "uint256[2] memory[2] memory"
                            }
                          },
                          {
                            "argumentTypes": null,
                            "id": 7736,
                            "name": "c",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 7722,
                            "src": "2080:1:6",
                            "typeDescriptions": {
                              "typeIdentifier": "t_array$_t_uint256_$2_memory_ptr",
                              "typeString": "uint256[2] memory"
                            }
                          },
                          {
                            "argumentTypes": null,
                            "id": 7737,
                            "name": "input",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 7726,
                            "src": "2083:5:6",
                            "typeDescriptions": {
                              "typeIdentifier": "t_array$_t_uint256_$2_memory_ptr",
                              "typeString": "uint256[2] memory"
                            }
                          }
                        ],
                        "expression": {
                          "argumentTypes": [
                            {
                              "typeIdentifier": "t_array$_t_uint256_$2_memory_ptr",
                              "typeString": "uint256[2] memory"
                            },
                            {
                              "typeIdentifier": "t_array$_t_array$_t_uint256_$2_memory_$2_memory_ptr",
                              "typeString": "uint256[2] memory[2] memory"
                            },
                            {
                              "typeIdentifier": "t_array$_t_uint256_$2_memory_ptr",
                              "typeString": "uint256[2] memory"
                            },
                            {
                              "typeIdentifier": "t_array$_t_uint256_$2_memory_ptr",
                              "typeString": "uint256[2] memory"
                            }
                          ],
                          "expression": {
                            "argumentTypes": null,
                            "id": 7732,
                            "name": "abi",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 10326,
                            "src": "2057:3:6",
                            "typeDescriptions": {
                              "typeIdentifier": "t_magic_abi",
                              "typeString": "abi"
                            }
                          },
                          "id": 7733,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": true,
                          "lValueRequested": false,
                          "memberName": "encodePacked",
                          "nodeType": "MemberAccess",
                          "referencedDeclaration": null,
                          "src": "2057:16:6",
                          "typeDescriptions": {
                            "typeIdentifier": "t_function_abiencodepacked_pure$__$returns$_t_bytes_memory_ptr_$",
                            "typeString": "function () pure returns (bytes memory)"
                          }
                        },
                        "id": 7738,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": false,
                        "kind": "functionCall",
                        "lValueRequested": false,
                        "names": [],
                        "nodeType": "FunctionCall",
                        "src": "2057:32:6",
                        "typeDescriptions": {
                          "typeIdentifier": "t_bytes_memory_ptr",
                          "typeString": "bytes memory"
                        }
                      }
                    ],
                    "expression": {
                      "argumentTypes": [
                        {
                          "typeIdentifier": "t_bytes_memory_ptr",
                          "typeString": "bytes memory"
                        }
                      ],
                      "id": 7731,
                      "name": "keccak256",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [],
                      "referencedDeclaration": 10333,
                      "src": "2047:9:6",
                      "typeDescriptions": {
                        "typeIdentifier": "t_function_keccak256_pure$_t_bytes_memory_ptr_$returns$_t_bytes32_$",
                        "typeString": "function (bytes memory) pure returns (bytes32)"
                      }
                    },
                    "id": 7739,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "kind": "functionCall",
                    "lValueRequested": false,
                    "names": [],
                    "nodeType": "FunctionCall",
                    "src": "2047:43:6",
                    "typeDescriptions": {
                      "typeIdentifier": "t_bytes32",
                      "typeString": "bytes32"
                    }
                  },
                  "nodeType": "VariableDeclarationStatement",
                  "src": "2028:62:6"
                },
                {
                  "expression": {
                    "argumentTypes": null,
                    "arguments": [
                      {
                        "argumentTypes": null,
                        "commonType": {
                          "typeIdentifier": "t_address",
                          "typeString": "address"
                        },
                        "id": 7749,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": false,
                        "lValueRequested": false,
                        "leftExpression": {
                          "argumentTypes": null,
                          "expression": {
                            "argumentTypes": null,
                            "baseExpression": {
                              "argumentTypes": null,
                              "id": 7742,
                              "name": "uniqueSolutions",
                              "nodeType": "Identifier",
                              "overloadedDeclarations": [],
                              "referencedDeclaration": 7664,
                              "src": "2195:15:6",
                              "typeDescriptions": {
                                "typeIdentifier": "t_mapping$_t_bytes32_$_t_struct$_Solution_$7657_storage_$",
                                "typeString": "mapping(bytes32 => struct SolnSquareVerifier.Solution storage ref)"
                              }
                            },
                            "id": 7744,
                            "indexExpression": {
                              "argumentTypes": null,
                              "id": 7743,
                              "name": "_hashKey",
                              "nodeType": "Identifier",
                              "overloadedDeclarations": [],
                              "referencedDeclaration": 7730,
                              "src": "2211:8:6",
                              "typeDescriptions": {
                                "typeIdentifier": "t_bytes32",
                                "typeString": "bytes32"
                              }
                            },
                            "isConstant": false,
                            "isLValue": true,
                            "isPure": false,
                            "lValueRequested": false,
                            "nodeType": "IndexAccess",
                            "src": "2195:25:6",
                            "typeDescriptions": {
                              "typeIdentifier": "t_struct$_Solution_$7657_storage",
                              "typeString": "struct SolnSquareVerifier.Solution storage ref"
                            }
                          },
                          "id": 7745,
                          "isConstant": false,
                          "isLValue": true,
                          "isPure": false,
                          "lValueRequested": false,
                          "memberName": "solvedByAddress",
                          "nodeType": "MemberAccess",
                          "referencedDeclaration": 7656,
                          "src": "2195:41:6",
                          "typeDescriptions": {
                            "typeIdentifier": "t_address",
                            "typeString": "address"
                          }
                        },
                        "nodeType": "BinaryOperation",
                        "operator": "==",
                        "rightExpression": {
                          "argumentTypes": null,
                          "arguments": [
                            {
                              "argumentTypes": null,
                              "hexValue": "30",
                              "id": 7747,
                              "isConstant": false,
                              "isLValue": false,
                              "isPure": true,
                              "kind": "number",
                              "lValueRequested": false,
                              "nodeType": "Literal",
                              "src": "2248:1:6",
                              "subdenomination": null,
                              "typeDescriptions": {
                                "typeIdentifier": "t_rational_0_by_1",
                                "typeString": "int_const 0"
                              },
                              "value": "0"
                            }
                          ],
                          "expression": {
                            "argumentTypes": [
                              {
                                "typeIdentifier": "t_rational_0_by_1",
                                "typeString": "int_const 0"
                              }
                            ],
                            "id": 7746,
                            "isConstant": false,
                            "isLValue": false,
                            "isPure": true,
                            "lValueRequested": false,
                            "nodeType": "ElementaryTypeNameExpression",
                            "src": "2240:7:6",
                            "typeDescriptions": {
                              "typeIdentifier": "t_type$_t_address_$",
                              "typeString": "type(address)"
                            },
                            "typeName": "address"
                          },
                          "id": 7748,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": true,
                          "kind": "typeConversion",
                          "lValueRequested": false,
                          "names": [],
                          "nodeType": "FunctionCall",
                          "src": "2240:10:6",
                          "typeDescriptions": {
                            "typeIdentifier": "t_address_payable",
                            "typeString": "address payable"
                          }
                        },
                        "src": "2195:55:6",
                        "typeDescriptions": {
                          "typeIdentifier": "t_bool",
                          "typeString": "bool"
                        }
                      },
                      {
                        "argumentTypes": null,
                        "hexValue": "4572726f722120736f6c7574696f6e2068617320616c7265616479206265656e2075736564",
                        "id": 7750,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": true,
                        "kind": "string",
                        "lValueRequested": false,
                        "nodeType": "Literal",
                        "src": "2264:39:6",
                        "subdenomination": null,
                        "typeDescriptions": {
                          "typeIdentifier": "t_stringliteral_2315cc0be0c84d95c6555f49c4aaff94a4237d5c27e65c956a6ba6a8672d8293",
                          "typeString": "literal_string \"Error! solution has already been used\""
                        },
                        "value": "Error! solution has already been used"
                      }
                    ],
                    "expression": {
                      "argumentTypes": [
                        {
                          "typeIdentifier": "t_bool",
                          "typeString": "bool"
                        },
                        {
                          "typeIdentifier": "t_stringliteral_2315cc0be0c84d95c6555f49c4aaff94a4237d5c27e65c956a6ba6a8672d8293",
                          "typeString": "literal_string \"Error! solution has already been used\""
                        }
                      ],
                      "id": 7741,
                      "name": "require",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [
                        10342,
                        10343
                      ],
                      "referencedDeclaration": 10343,
                      "src": "2174:7:6",
                      "typeDescriptions": {
                        "typeIdentifier": "t_function_require_pure$_t_bool_$_t_string_memory_ptr_$returns$__$",
                        "typeString": "function (bool,string memory) pure"
                      }
                    },
                    "id": 7751,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "kind": "functionCall",
                    "lValueRequested": false,
                    "names": [],
                    "nodeType": "FunctionCall",
                    "src": "2174:139:6",
                    "typeDescriptions": {
                      "typeIdentifier": "t_tuple$__$",
                      "typeString": "tuple()"
                    }
                  },
                  "id": 7752,
                  "nodeType": "ExpressionStatement",
                  "src": "2174:139:6"
                },
                {
                  "expression": {
                    "argumentTypes": null,
                    "arguments": [
                      {
                        "argumentTypes": null,
                        "arguments": [
                          {
                            "argumentTypes": null,
                            "id": 7756,
                            "name": "a",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 7712,
                            "src": "2396:1:6",
                            "typeDescriptions": {
                              "typeIdentifier": "t_array$_t_uint256_$2_memory_ptr",
                              "typeString": "uint256[2] memory"
                            }
                          },
                          {
                            "argumentTypes": null,
                            "id": 7757,
                            "name": "b",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 7718,
                            "src": "2399:1:6",
                            "typeDescriptions": {
                              "typeIdentifier": "t_array$_t_array$_t_uint256_$2_memory_$2_memory_ptr",
                              "typeString": "uint256[2] memory[2] memory"
                            }
                          },
                          {
                            "argumentTypes": null,
                            "id": 7758,
                            "name": "c",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 7722,
                            "src": "2402:1:6",
                            "typeDescriptions": {
                              "typeIdentifier": "t_array$_t_uint256_$2_memory_ptr",
                              "typeString": "uint256[2] memory"
                            }
                          },
                          {
                            "argumentTypes": null,
                            "id": 7759,
                            "name": "input",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 7726,
                            "src": "2405:5:6",
                            "typeDescriptions": {
                              "typeIdentifier": "t_array$_t_uint256_$2_memory_ptr",
                              "typeString": "uint256[2] memory"
                            }
                          }
                        ],
                        "expression": {
                          "argumentTypes": [
                            {
                              "typeIdentifier": "t_array$_t_uint256_$2_memory_ptr",
                              "typeString": "uint256[2] memory"
                            },
                            {
                              "typeIdentifier": "t_array$_t_array$_t_uint256_$2_memory_$2_memory_ptr",
                              "typeString": "uint256[2] memory[2] memory"
                            },
                            {
                              "typeIdentifier": "t_array$_t_uint256_$2_memory_ptr",
                              "typeString": "uint256[2] memory"
                            },
                            {
                              "typeIdentifier": "t_array$_t_uint256_$2_memory_ptr",
                              "typeString": "uint256[2] memory"
                            }
                          ],
                          "expression": {
                            "argumentTypes": null,
                            "id": 7754,
                            "name": "squareContract",
                            "nodeType": "Identifier",
                            "overloadedDeclarations": [],
                            "referencedDeclaration": 7638,
                            "src": "2372:14:6",
                            "typeDescriptions": {
                              "typeIdentifier": "t_contract$_ISquareVerifier_$7634",
                              "typeString": "contract ISquareVerifier"
                            }
                          },
                          "id": 7755,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": false,
                          "lValueRequested": false,
                          "memberName": "verifyTx",
                          "nodeType": "MemberAccess",
                          "referencedDeclaration": 10323,
                          "src": "2372:23:6",
                          "typeDescriptions": {
                            "typeIdentifier": "t_function_external_nonpayable$_t_array$_t_uint256_$2_memory_ptr_$_t_array$_t_array$_t_uint256_$2_memory_$2_memory_ptr_$_t_array$_t_uint256_$2_memory_ptr_$_t_array$_t_uint256_$2_memory_ptr_$returns$_t_bool_$",
                            "typeString": "function (uint256[2] memory,uint256[2] memory[2] memory,uint256[2] memory,uint256[2] memory) external returns (bool)"
                          }
                        },
                        "id": 7760,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": false,
                        "kind": "functionCall",
                        "lValueRequested": false,
                        "names": [],
                        "nodeType": "FunctionCall",
                        "src": "2372:39:6",
                        "typeDescriptions": {
                          "typeIdentifier": "t_bool",
                          "typeString": "bool"
                        }
                      },
                      {
                        "argumentTypes": null,
                        "hexValue": "4572726f722120736f6c7574696f6e2063616e206e6f74206265207665726966696564",
                        "id": 7761,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": true,
                        "kind": "string",
                        "lValueRequested": false,
                        "nodeType": "Literal",
                        "src": "2425:37:6",
                        "subdenomination": null,
                        "typeDescriptions": {
                          "typeIdentifier": "t_stringliteral_bc32829253e8a4a841dc3cda5c64e23721d85ebe96aa2bda94b72d78ff532c4a",
                          "typeString": "literal_string \"Error! solution can not be verified\""
                        },
                        "value": "Error! solution can not be verified"
                      }
                    ],
                    "expression": {
                      "argumentTypes": [
                        {
                          "typeIdentifier": "t_bool",
                          "typeString": "bool"
                        },
                        {
                          "typeIdentifier": "t_stringliteral_bc32829253e8a4a841dc3cda5c64e23721d85ebe96aa2bda94b72d78ff532c4a",
                          "typeString": "literal_string \"Error! solution can not be verified\""
                        }
                      ],
                      "id": 7753,
                      "name": "require",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [
                        10342,
                        10343
                      ],
                      "referencedDeclaration": 10343,
                      "src": "2351:7:6",
                      "typeDescriptions": {
                        "typeIdentifier": "t_function_require_pure$_t_bool_$_t_string_memory_ptr_$returns$__$",
                        "typeString": "function (bool,string memory) pure"
                      }
                    },
                    "id": 7762,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "kind": "functionCall",
                    "lValueRequested": false,
                    "names": [],
                    "nodeType": "FunctionCall",
                    "src": "2351:121:6",
                    "typeDescriptions": {
                      "typeIdentifier": "t_tuple$__$",
                      "typeString": "tuple()"
                    }
                  },
                  "id": 7763,
                  "nodeType": "ExpressionStatement",
                  "src": "2351:121:6"
                },
                {
                  "expression": {
                    "argumentTypes": null,
                    "arguments": [
                      {
                        "argumentTypes": null,
                        "id": 7765,
                        "name": "_to",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 7706,
                        "src": "2495:3:6",
                        "typeDescriptions": {
                          "typeIdentifier": "t_address",
                          "typeString": "address"
                        }
                      },
                      {
                        "argumentTypes": null,
                        "id": 7766,
                        "name": "_tokenId",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 7708,
                        "src": "2500:8:6",
                        "typeDescriptions": {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        }
                      },
                      {
                        "argumentTypes": null,
                        "id": 7767,
                        "name": "_hashKey",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 7730,
                        "src": "2510:8:6",
                        "typeDescriptions": {
                          "typeIdentifier": "t_bytes32",
                          "typeString": "bytes32"
                        }
                      }
                    ],
                    "expression": {
                      "argumentTypes": [
                        {
                          "typeIdentifier": "t_address",
                          "typeString": "address"
                        },
                        {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        },
                        {
                          "typeIdentifier": "t_bytes32",
                          "typeString": "bytes32"
                        }
                      ],
                      "id": 7764,
                      "name": "addSolution",
                      "nodeType": "Identifier",
                      "overloadedDeclarations": [],
                      "referencedDeclaration": 7704,
                      "src": "2483:11:6",
                      "typeDescriptions": {
                        "typeIdentifier": "t_function_internal_nonpayable$_t_address_$_t_uint256_$_t_bytes32_$returns$__$",
                        "typeString": "function (address,uint256,bytes32)"
                      }
                    },
                    "id": 7768,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "kind": "functionCall",
                    "lValueRequested": false,
                    "names": [],
                    "nodeType": "FunctionCall",
                    "src": "2483:36:6",
                    "typeDescriptions": {
                      "typeIdentifier": "t_tuple$__$",
                      "typeString": "tuple()"
                    }
                  },
                  "id": 7769,
                  "nodeType": "ExpressionStatement",
                  "src": "2483:36:6"
                },
                {
                  "expression": {
                    "argumentTypes": null,
                    "arguments": [
                      {
                        "argumentTypes": null,
                        "id": 7773,
                        "name": "_to",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 7706,
                        "src": "2607:3:6",
                        "typeDescriptions": {
                          "typeIdentifier": "t_address",
                          "typeString": "address"
                        }
                      },
                      {
                        "argumentTypes": null,
                        "id": 7774,
                        "name": "_tokenId",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 7708,
                        "src": "2612:8:6",
                        "typeDescriptions": {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        }
                      }
                    ],
                    "expression": {
                      "argumentTypes": [
                        {
                          "typeIdentifier": "t_address",
                          "typeString": "address"
                        },
                        {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        }
                      ],
                      "expression": {
                        "argumentTypes": null,
                        "id": 7770,
                        "name": "super",
                        "nodeType": "Identifier",
                        "overloadedDeclarations": [],
                        "referencedDeclaration": 10396,
                        "src": "2596:5:6",
                        "typeDescriptions": {
                          "typeIdentifier": "t_super$_SolnSquareVerifier_$7779",
                          "typeString": "contract super SolnSquareVerifier"
                        }
                      },
                      "id": 7772,
                      "isConstant": false,
                      "isLValue": false,
                      "isPure": false,
                      "lValueRequested": false,
                      "memberName": "mint",
                      "nodeType": "MemberAccess",
                      "referencedDeclaration": 1356,
                      "src": "2596:10:6",
                      "typeDescriptions": {
                        "typeIdentifier": "t_function_internal_nonpayable$_t_address_$_t_uint256_$returns$_t_bool_$",
                        "typeString": "function (address,uint256) returns (bool)"
                      }
                    },
                    "id": 7775,
                    "isConstant": false,
                    "isLValue": false,
                    "isPure": false,
                    "kind": "functionCall",
                    "lValueRequested": false,
                    "names": [],
                    "nodeType": "FunctionCall",
                    "src": "2596:25:6",
                    "typeDescriptions": {
                      "typeIdentifier": "t_bool",
                      "typeString": "bool"
                    }
                  },
                  "id": 7776,
                  "nodeType": "ExpressionStatement",
                  "src": "2596:25:6"
                }
              ]
            },
            "documentation": null,
            "id": 7778,
            "implemented": true,
            "kind": "function",
            "modifiers": [],
            "name": "mintNewNFT",
            "nodeType": "FunctionDefinition",
            "parameters": {
              "id": 7727,
              "nodeType": "ParameterList",
              "parameters": [
                {
                  "constant": false,
                  "id": 7706,
                  "name": "_to",
                  "nodeType": "VariableDeclaration",
                  "scope": 7778,
                  "src": "1808:11:6",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_address",
                    "typeString": "address"
                  },
                  "typeName": {
                    "id": 7705,
                    "name": "address",
                    "nodeType": "ElementaryTypeName",
                    "src": "1808:7:6",
                    "stateMutability": "nonpayable",
                    "typeDescriptions": {
                      "typeIdentifier": "t_address",
                      "typeString": "address"
                    }
                  },
                  "value": null,
                  "visibility": "internal"
                },
                {
                  "constant": false,
                  "id": 7708,
                  "name": "_tokenId",
                  "nodeType": "VariableDeclaration",
                  "scope": 7778,
                  "src": "1829:16:6",
                  "stateVariable": false,
                  "storageLocation": "default",
                  "typeDescriptions": {
                    "typeIdentifier": "t_uint256",
                    "typeString": "uint256"
                  },
                  "typeName": {
                    "id": 7707,
                    "name": "uint256",
                    "nodeType": "ElementaryTypeName",
                    "src": "1829:7:6",
                    "typeDescriptions": {
                      "typeIdentifier": "t_uint256",
                      "typeString": "uint256"
                    }
                  },
                  "value": null,
                  "visibility": "internal"
                },
                {
                  "constant": false,
                  "id": 7712,
                  "name": "a",
                  "nodeType": "VariableDeclaration",
                  "scope": 7778,
                  "src": "1855:19:6",
                  "stateVariable": false,
                  "storageLocation": "memory",
                  "typeDescriptions": {
                    "typeIdentifier": "t_array$_t_uint256_$2_memory_ptr",
                    "typeString": "uint256[2]"
                  },
                  "typeName": {
                    "baseType": {
                      "id": 7709,
                      "name": "uint256",
                      "nodeType": "ElementaryTypeName",
                      "src": "1855:7:6",
                      "typeDescriptions": {
                        "typeIdentifier": "t_uint256",
                        "typeString": "uint256"
                      }
                    },
                    "id": 7711,
                    "length": {
                      "argumentTypes": null,
                      "hexValue": "32",
                      "id": 7710,
                      "isConstant": false,
                      "isLValue": false,
                      "isPure": true,
                      "kind": "number",
                      "lValueRequested": false,
                      "nodeType": "Literal",
                      "src": "1863:1:6",
                      "subdenomination": null,
                      "typeDescriptions": {
                        "typeIdentifier": "t_rational_2_by_1",
                        "typeString": "int_const 2"
                      },
                      "value": "2"
                    },
                    "nodeType": "ArrayTypeName",
                    "src": "1855:10:6",
                    "typeDescriptions": {
                      "typeIdentifier": "t_array$_t_uint256_$2_storage_ptr",
                      "typeString": "uint256[2]"
                    }
                  },
                  "value": null,
                  "visibility": "internal"
                },
                {
                  "constant": false,
                  "id": 7718,
                  "name": "b",
                  "nodeType": "VariableDeclaration",
                  "scope": 7778,
                  "src": "1884:22:6",
                  "stateVariable": false,
                  "storageLocation": "memory",
                  "typeDescriptions": {
                    "typeIdentifier": "t_array$_t_array$_t_uint256_$2_memory_$2_memory_ptr",
                    "typeString": "uint256[2][2]"
                  },
                  "typeName": {
                    "baseType": {
                      "baseType": {
                        "id": 7713,
                        "name": "uint256",
                        "nodeType": "ElementaryTypeName",
                        "src": "1884:7:6",
                        "typeDescriptions": {
                          "typeIdentifier": "t_uint256",
                          "typeString": "uint256"
                        }
                      },
                      "id": 7715,
                      "length": {
                        "argumentTypes": null,
                        "hexValue": "32",
                        "id": 7714,
                        "isConstant": false,
                        "isLValue": false,
                        "isPure": true,
                        "kind": "number",
                        "lValueRequested": false,
                        "nodeType": "Literal",
                        "src": "1892:1:6",
                        "subdenomination": null,
                        "typeDescriptions": {
                          "typeIdentifier": "t_rational_2_by_1",
                          "typeString": "int_const 2"
                        },
                        "value": "2"
                      },
                      "nodeType": "ArrayTypeName",
                      "src": "1884:10:6",
                      "typeDescriptions": {
                        "typeIdentifier": "t_array$_t_uint256_$2_storage_ptr",
                        "typeString": "uint256[2]"
                      }
                    },
                    "id": 7717,
                    "length": {
                      "argumentTypes": null,
                      "hexValue": "32",
                      "id": 7716,
                      "isConstant": false,
                      "isLValue": false,
                      "isPure": true,
                      "kind": "number",
                      "lValueRequested": false,
                      "nodeType": "Literal",
                      "src": "1895:1:6",
                      "subdenomination": null,
                      "typeDescriptions": {
                        "typeIdentifier": "t_rational_2_by_1",
                        "typeString": "int_const 2"
                      },
                      "value": "2"
                    },
                    "nodeType": "ArrayTypeName",
                    "src": "1884:13:6",
                    "typeDescriptions": {
                      "typeIdentifier": "t_array$_t_array$_t_uint256_$2_storage_$2_storage_ptr",
                      "typeString": "uint256[2][2]"
                    }
                  },
                  "value": null,
                  "visibility": "internal"
                },
                {
                  "constant": false,
                  "id": 7722,
                  "name": "c",
                  "nodeType": "VariableDeclaration",
                  "scope": 7778,
                  "src": "1916:19:6",
                  "stateVariable": false,
                  "storageLocation": "memory",
                  "typeDescriptions": {
                    "typeIdentifier": "t_array$_t_uint256_$2_memory_ptr",
                    "typeString": "uint256[2]"
                  },
                  "typeName": {
                    "baseType": {
                      "id": 7719,
                      "name": "uint256",
                      "nodeType": "ElementaryTypeName",
                      "src": "1916:7:6",
                      "typeDescriptions": {
                        "typeIdentifier": "t_uint256",
                        "typeString": "uint256"
                      }
                    },
                    "id": 7721,
                    "length": {
                      "argumentTypes": null,
                      "hexValue": "32",
                      "id": 7720,
                      "isConstant": false,
                      "isLValue": false,
                      "isPure": true,
                      "kind": "number",
                      "lValueRequested": false,
                      "nodeType": "Literal",
                      "src": "1924:1:6",
                      "subdenomination": null,
                      "typeDescriptions": {
                        "typeIdentifier": "t_rational_2_by_1",
                        "typeString": "int_const 2"
                      },
                      "value": "2"
                    },
                    "nodeType": "ArrayTypeName",
                    "src": "1916:10:6",
                    "typeDescriptions": {
                      "typeIdentifier": "t_array$_t_uint256_$2_storage_ptr",
                      "typeString": "uint256[2]"
                    }
                  },
                  "value": null,
                  "visibility": "internal"
                },
                {
                  "constant": false,
                  "id": 7726,
                  "name": "input",
                  "nodeType": "VariableDeclaration",
                  "scope": 7778,
                  "src": "1945:23:6",
                  "stateVariable": false,
                  "storageLocation": "memory",
                  "typeDescriptions": {
                    "typeIdentifier": "t_array$_t_uint256_$2_memory_ptr",
                    "typeString": "uint256[2]"
                  },
                  "typeName": {
                    "baseType": {
                      "id": 7723,
                      "name": "uint256",
                      "nodeType": "ElementaryTypeName",
                      "src": "1945:7:6",
                      "typeDescriptions": {
                        "typeIdentifier": "t_uint256",
                        "typeString": "uint256"
                      }
                    },
                    "id": 7725,
                    "length": {
                      "argumentTypes": null,
                      "hexValue": "32",
                      "id": 7724,
                      "isConstant": false,
                      "isLValue": false,
                      "isPure": true,
                      "kind": "number",
                      "lValueRequested": false,
                      "nodeType": "Literal",
                      "src": "1953:1:6",
                      "subdenomination": null,
                      "typeDescriptions": {
                        "typeIdentifier": "t_rational_2_by_1",
                        "typeString": "int_const 2"
                      },
                      "value": "2"
                    },
                    "nodeType": "ArrayTypeName",
                    "src": "1945:10:6",
                    "typeDescriptions": {
                      "typeIdentifier": "t_array$_t_uint256_$2_storage_ptr",
                      "typeString": "uint256[2]"
                    }
                  },
                  "value": null,
                  "visibility": "internal"
                }
              ],
              "src": "1798:176:6"
            },
            "returnParameters": {
              "id": 7728,
              "nodeType": "ParameterList",
              "parameters": [],
              "src": "1982:0:6"
            },
            "scope": 7779,
            "src": "1779:849:6",
            "stateMutability": "nonpayable",
            "superFunction": null,
            "visibility": "public"
          }
        ],
        "scope": 7780,
        "src": "486:2144:6"
      }
    ],
    "src": "0:2631:6"
  },
  "legacyAST": {
    "attributes": {
      "absolutePath": "project:/contracts/SolnSquareVerifier.sol",
      "exportedSymbols": {
        "ISquareVerifier": [
          7634
        ],
        "SolnSquareVerifier": [
          7779
        ]
      }
    },
    "children": [
      {
        "attributes": {
          "literals": [
            "solidity",
            ">",
            "0.4",
            ".24"
          ]
        },
        "id": 7627,
        "name": "PragmaDirective",
        "src": "0:24:6"
      },
      {
        "attributes": {
          "literals": [
            "experimental",
            "ABIEncoderV2"
          ]
        },
        "id": 7628,
        "name": "PragmaDirective",
        "src": "25:33:6"
      },
      {
        "attributes": {
          "SourceUnit": 1358,
          "absolutePath": "project:/contracts/ERC721Mintable.sol",
          "file": "./ERC721Mintable.sol",
          "scope": 7780,
          "symbolAliases": [
            {
              "foreign": 7629,
              "local": null
            }
          ],
          "unitAlias": ""
        },
        "id": 7630,
        "name": "ImportDirective",
        "src": "153:54:6"
      },
      {
        "attributes": {
          "SourceUnit": 10325,
          "absolutePath": "project:/contracts/verifier.sol",
          "file": "./verifier.sol",
          "scope": 7780,
          "symbolAliases": [
            null
          ],
          "unitAlias": ""
        },
        "id": 7631,
        "name": "ImportDirective",
        "src": "208:24:6"
      },
      {
        "attributes": {
          "contractDependencies": [
            10324
          ],
          "contractKind": "contract",
          "documentation": null,
          "fullyImplemented": true,
          "linearizedBaseContracts": [
            7634,
            10324
          ],
          "name": "ISquareVerifier",
          "nodes": [
            null
          ],
          "scope": 7780
        },
        "children": [
          {
            "attributes": {
              "arguments": null
            },
            "children": [
              {
                "attributes": {
                  "contractScope": null,
                  "name": "Verifier",
                  "referencedDeclaration": 10324,
                  "type": "contract Verifier"
                },
                "id": 7632,
                "name": "UserDefinedTypeName",
                "src": "369:8:6"
              }
            ],
            "id": 7633,
            "name": "InheritanceSpecifier",
            "src": "369:8:6"
          }
        ],
        "id": 7634,
        "name": "ContractDefinition",
        "src": "341:41:6"
      },
      {
        "attributes": {
          "contractDependencies": [
            289,
            368,
            414,
            914,
            1212,
            1322,
            1357,
            7625
          ],
          "contractKind": "contract",
          "documentation": null,
          "fullyImplemented": true,
          "linearizedBaseContracts": [
            7779,
            1357,
            1322,
            7625,
            1212,
            914,
            414,
            368,
            289
          ],
          "name": "SolnSquareVerifier",
          "scope": 7780
        },
        "children": [
          {
            "attributes": {
              "arguments": null
            },
            "children": [
              {
                "attributes": {
                  "contractScope": null,
                  "name": "ERC721HouseTitle",
                  "referencedDeclaration": 1357,
                  "type": "contract ERC721HouseTitle"
                },
                "id": 7635,
                "name": "UserDefinedTypeName",
                "src": "517:16:6"
              }
            ],
            "id": 7636,
            "name": "InheritanceSpecifier",
            "src": "517:16:6"
          },
          {
            "attributes": {
              "constant": false,
              "name": "squareContract",
              "scope": 7779,
              "stateVariable": true,
              "storageLocation": "default",
              "type": "contract ISquareVerifier",
              "value": null,
              "visibility": "public"
            },
            "children": [
              {
                "attributes": {
                  "contractScope": null,
                  "name": "ISquareVerifier",
                  "referencedDeclaration": 7634,
                  "type": "contract ISquareVerifier"
                },
                "id": 7637,
                "name": "UserDefinedTypeName",
                "src": "540:15:6"
              }
            ],
            "id": 7638,
            "name": "VariableDeclaration",
            "src": "540:37:6"
          },
          {
            "attributes": {
              "documentation": null,
              "implemented": true,
              "isConstructor": true,
              "kind": "constructor",
              "name": "",
              "scope": 7779,
              "stateMutability": "nonpayable",
              "superFunction": null,
              "visibility": "public"
            },
            "children": [
              {
                "children": [
                  {
                    "attributes": {
                      "constant": false,
                      "name": "verifierContractAddress",
                      "scope": 7652,
                      "stateVariable": false,
                      "storageLocation": "default",
                      "type": "address",
                      "value": null,
                      "visibility": "internal"
                    },
                    "children": [
                      {
                        "attributes": {
                          "name": "address",
                          "stateMutability": "nonpayable",
                          "type": "address"
                        },
                        "id": 7639,
                        "name": "ElementaryTypeName",
                        "src": "596:7:6"
                      }
                    ],
                    "id": 7640,
                    "name": "VariableDeclaration",
                    "src": "596:31:6"
                  }
                ],
                "id": 7641,
                "name": "ParameterList",
                "src": "595:33:6"
              },
              {
                "attributes": {
                  "parameters": [
                    null
                  ]
                },
                "children": [],
                "id": 7644,
                "name": "ParameterList",
                "src": "655:0:6"
              },
              {
                "attributes": {
                  "arguments": [
                    null
                  ]
                },
                "children": [
                  {
                    "attributes": {
                      "argumentTypes": null,
                      "overloadedDeclarations": [
                        null
                      ],
                      "referencedDeclaration": 1357,
                      "type": "type(contract ERC721HouseTitle)",
                      "value": "ERC721HouseTitle"
                    },
                    "id": 7642,
                    "name": "Identifier",
                    "src": "636:16:6"
                  }
                ],
                "id": 7643,
                "name": "ModifierInvocation",
                "src": "636:18:6"
              },
              {
                "children": [
                  {
                    "children": [
                      {
                        "attributes": {
                          "argumentTypes": null,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": false,
                          "lValueRequested": false,
                          "operator": "=",
                          "type": "contract ISquareVerifier"
                        },
                        "children": [
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "overloadedDeclarations": [
                                null
                              ],
                              "referencedDeclaration": 7638,
                              "type": "contract ISquareVerifier",
                              "value": "squareContract"
                            },
                            "id": 7645,
                            "name": "Identifier",
                            "src": "665:14:6"
                          },
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "isConstant": false,
                              "isLValue": false,
                              "isPure": false,
                              "isStructConstructorCall": false,
                              "lValueRequested": false,
                              "names": [
                                null
                              ],
                              "type": "contract ISquareVerifier",
                              "type_conversion": true
                            },
                            "children": [
                              {
                                "attributes": {
                                  "argumentTypes": [
                                    {
                                      "typeIdentifier": "t_address",
                                      "typeString": "address"
                                    }
                                  ],
                                  "overloadedDeclarations": [
                                    null
                                  ],
                                  "referencedDeclaration": 7634,
                                  "type": "type(contract ISquareVerifier)",
                                  "value": "ISquareVerifier"
                                },
                                "id": 7646,
                                "name": "Identifier",
                                "src": "682:15:6"
                              },
                              {
                                "attributes": {
                                  "argumentTypes": null,
                                  "overloadedDeclarations": [
                                    null
                                  ],
                                  "referencedDeclaration": 7640,
                                  "type": "address",
                                  "value": "verifierContractAddress"
                                },
                                "id": 7647,
                                "name": "Identifier",
                                "src": "698:23:6"
                              }
                            ],
                            "id": 7648,
                            "name": "FunctionCall",
                            "src": "682:40:6"
                          }
                        ],
                        "id": 7649,
                        "name": "Assignment",
                        "src": "665:57:6"
                      }
                    ],
                    "id": 7650,
                    "name": "ExpressionStatement",
                    "src": "665:57:6"
                  }
                ],
                "id": 7651,
                "name": "Block",
                "src": "655:74:6"
              }
            ],
            "id": 7652,
            "name": "FunctionDefinition",
            "src": "584:145:6"
          },
          {
            "attributes": {
              "canonicalName": "SolnSquareVerifier.Solution",
              "name": "Solution",
              "scope": 7779,
              "visibility": "public"
            },
            "children": [
              {
                "attributes": {
                  "constant": false,
                  "name": "index",
                  "scope": 7657,
                  "stateVariable": false,
                  "storageLocation": "default",
                  "type": "uint256",
                  "value": null,
                  "visibility": "internal"
                },
                "children": [
                  {
                    "attributes": {
                      "name": "uint256",
                      "type": "uint256"
                    },
                    "id": 7653,
                    "name": "ElementaryTypeName",
                    "src": "835:7:6"
                  }
                ],
                "id": 7654,
                "name": "VariableDeclaration",
                "src": "835:13:6"
              },
              {
                "attributes": {
                  "constant": false,
                  "name": "solvedByAddress",
                  "scope": 7657,
                  "stateVariable": false,
                  "storageLocation": "default",
                  "type": "address",
                  "value": null,
                  "visibility": "internal"
                },
                "children": [
                  {
                    "attributes": {
                      "name": "address",
                      "stateMutability": "nonpayable",
                      "type": "address"
                    },
                    "id": 7655,
                    "name": "ElementaryTypeName",
                    "src": "858:7:6"
                  }
                ],
                "id": 7656,
                "name": "VariableDeclaration",
                "src": "858:23:6"
              }
            ],
            "id": 7657,
            "name": "StructDefinition",
            "src": "809:79:6"
          },
          {
            "attributes": {
              "constant": false,
              "name": "solutions",
              "scope": 7779,
              "stateVariable": true,
              "storageLocation": "default",
              "type": "struct SolnSquareVerifier.Solution[]",
              "value": null,
              "visibility": "internal"
            },
            "children": [
              {
                "attributes": {
                  "length": null,
                  "type": "struct SolnSquareVerifier.Solution[]"
                },
                "children": [
                  {
                    "attributes": {
                      "contractScope": null,
                      "name": "Solution",
                      "referencedDeclaration": 7657,
                      "type": "struct SolnSquareVerifier.Solution"
                    },
                    "id": 7658,
                    "name": "UserDefinedTypeName",
                    "src": "942:8:6"
                  }
                ],
                "id": 7659,
                "name": "ArrayTypeName",
                "src": "942:10:6"
              }
            ],
            "id": 7660,
            "name": "VariableDeclaration",
            "src": "942:20:6"
          },
          {
            "attributes": {
              "constant": false,
              "name": "uniqueSolutions",
              "scope": 7779,
              "stateVariable": true,
              "storageLocation": "default",
              "type": "mapping(bytes32 => struct SolnSquareVerifier.Solution)",
              "value": null,
              "visibility": "private"
            },
            "children": [
              {
                "attributes": {
                  "type": "mapping(bytes32 => struct SolnSquareVerifier.Solution)"
                },
                "children": [
                  {
                    "attributes": {
                      "name": "bytes32",
                      "type": "bytes32"
                    },
                    "id": 7661,
                    "name": "ElementaryTypeName",
                    "src": "1042:7:6"
                  },
                  {
                    "attributes": {
                      "contractScope": null,
                      "name": "Solution",
                      "referencedDeclaration": 7657,
                      "type": "struct SolnSquareVerifier.Solution"
                    },
                    "id": 7662,
                    "name": "UserDefinedTypeName",
                    "src": "1053:8:6"
                  }
                ],
                "id": 7663,
                "name": "Mapping",
                "src": "1034:28:6"
              }
            ],
            "id": 7664,
            "name": "VariableDeclaration",
            "src": "1034:52:6"
          },
          {
            "attributes": {
              "anonymous": false,
              "documentation": null,
              "name": "SolutionAdded"
            },
            "children": [
              {
                "children": [
                  {
                    "attributes": {
                      "constant": false,
                      "indexed": false,
                      "name": "to",
                      "scope": 7670,
                      "stateVariable": false,
                      "storageLocation": "default",
                      "type": "address",
                      "value": null,
                      "visibility": "internal"
                    },
                    "children": [
                      {
                        "attributes": {
                          "name": "address",
                          "stateMutability": "nonpayable",
                          "type": "address"
                        },
                        "id": 7665,
                        "name": "ElementaryTypeName",
                        "src": "1174:7:6"
                      }
                    ],
                    "id": 7666,
                    "name": "VariableDeclaration",
                    "src": "1174:10:6"
                  },
                  {
                    "attributes": {
                      "constant": false,
                      "indexed": false,
                      "name": "index",
                      "scope": 7670,
                      "stateVariable": false,
                      "storageLocation": "default",
                      "type": "uint256",
                      "value": null,
                      "visibility": "internal"
                    },
                    "children": [
                      {
                        "attributes": {
                          "name": "uint256",
                          "type": "uint256"
                        },
                        "id": 7667,
                        "name": "ElementaryTypeName",
                        "src": "1186:7:6"
                      }
                    ],
                    "id": 7668,
                    "name": "VariableDeclaration",
                    "src": "1186:13:6"
                  }
                ],
                "id": 7669,
                "name": "ParameterList",
                "src": "1173:27:6"
              }
            ],
            "id": 7670,
            "name": "EventDefinition",
            "src": "1154:47:6"
          },
          {
            "attributes": {
              "documentation": null,
              "implemented": true,
              "isConstructor": false,
              "kind": "function",
              "modifiers": [
                null
              ],
              "name": "addSolution",
              "scope": 7779,
              "stateMutability": "nonpayable",
              "superFunction": null,
              "visibility": "internal"
            },
            "children": [
              {
                "children": [
                  {
                    "attributes": {
                      "constant": false,
                      "name": "_solvedByAddress",
                      "scope": 7704,
                      "stateVariable": false,
                      "storageLocation": "default",
                      "type": "address",
                      "value": null,
                      "visibility": "internal"
                    },
                    "children": [
                      {
                        "attributes": {
                          "name": "address",
                          "stateMutability": "nonpayable",
                          "type": "address"
                        },
                        "id": 7671,
                        "name": "ElementaryTypeName",
                        "src": "1320:7:6"
                      }
                    ],
                    "id": 7672,
                    "name": "VariableDeclaration",
                    "src": "1320:24:6"
                  },
                  {
                    "attributes": {
                      "constant": false,
                      "name": "_index",
                      "scope": 7704,
                      "stateVariable": false,
                      "storageLocation": "default",
                      "type": "uint256",
                      "value": null,
                      "visibility": "internal"
                    },
                    "children": [
                      {
                        "attributes": {
                          "name": "uint256",
                          "type": "uint256"
                        },
                        "id": 7673,
                        "name": "ElementaryTypeName",
                        "src": "1354:7:6"
                      }
                    ],
                    "id": 7674,
                    "name": "VariableDeclaration",
                    "src": "1354:14:6"
                  },
                  {
                    "attributes": {
                      "constant": false,
                      "name": "_hashKey",
                      "scope": 7704,
                      "stateVariable": false,
                      "storageLocation": "default",
                      "type": "bytes32",
                      "value": null,
                      "visibility": "internal"
                    },
                    "children": [
                      {
                        "attributes": {
                          "name": "bytes32",
                          "type": "bytes32"
                        },
                        "id": 7675,
                        "name": "ElementaryTypeName",
                        "src": "1378:7:6"
                      }
                    ],
                    "id": 7676,
                    "name": "VariableDeclaration",
                    "src": "1378:16:6"
                  }
                ],
                "id": 7677,
                "name": "ParameterList",
                "src": "1310:90:6"
              },
              {
                "attributes": {
                  "parameters": [
                    null
                  ]
                },
                "children": [],
                "id": 7678,
                "name": "ParameterList",
                "src": "1410:0:6"
              },
              {
                "children": [
                  {
                    "attributes": {
                      "assignments": [
                        7680
                      ]
                    },
                    "children": [
                      {
                        "attributes": {
                          "constant": false,
                          "name": "_solution",
                          "scope": 7703,
                          "stateVariable": false,
                          "storageLocation": "memory",
                          "type": "struct SolnSquareVerifier.Solution",
                          "value": null,
                          "visibility": "internal"
                        },
                        "children": [
                          {
                            "attributes": {
                              "contractScope": null,
                              "name": "Solution",
                              "referencedDeclaration": 7657,
                              "type": "struct SolnSquareVerifier.Solution"
                            },
                            "id": 7679,
                            "name": "UserDefinedTypeName",
                            "src": "1420:8:6"
                          }
                        ],
                        "id": 7680,
                        "name": "VariableDeclaration",
                        "src": "1420:25:6"
                      },
                      {
                        "attributes": {
                          "argumentTypes": null,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": false,
                          "isStructConstructorCall": true,
                          "lValueRequested": false,
                          "names": [
                            "index",
                            "solvedByAddress"
                          ],
                          "type": "struct SolnSquareVerifier.Solution memory",
                          "type_conversion": false
                        },
                        "children": [
                          {
                            "attributes": {
                              "argumentTypes": [
                                {
                                  "typeIdentifier": "t_uint256",
                                  "typeString": "uint256"
                                },
                                {
                                  "typeIdentifier": "t_address",
                                  "typeString": "address"
                                }
                              ],
                              "overloadedDeclarations": [
                                null
                              ],
                              "referencedDeclaration": 7657,
                              "type": "type(struct SolnSquareVerifier.Solution storage pointer)",
                              "value": "Solution"
                            },
                            "id": 7681,
                            "name": "Identifier",
                            "src": "1448:8:6"
                          },
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "overloadedDeclarations": [
                                null
                              ],
                              "referencedDeclaration": 7674,
                              "type": "uint256",
                              "value": "_index"
                            },
                            "id": 7682,
                            "name": "Identifier",
                            "src": "1478:6:6"
                          },
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "overloadedDeclarations": [
                                null
                              ],
                              "referencedDeclaration": 7672,
                              "type": "address",
                              "value": "_solvedByAddress"
                            },
                            "id": 7683,
                            "name": "Identifier",
                            "src": "1515:16:6"
                          }
                        ],
                        "id": 7684,
                        "name": "FunctionCall",
                        "src": "1448:94:6"
                      }
                    ],
                    "id": 7685,
                    "name": "VariableDeclarationStatement",
                    "src": "1420:122:6"
                  },
                  {
                    "children": [
                      {
                        "attributes": {
                          "argumentTypes": null,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": false,
                          "isStructConstructorCall": false,
                          "lValueRequested": false,
                          "names": [
                            null
                          ],
                          "type": "uint256",
                          "type_conversion": false
                        },
                        "children": [
                          {
                            "attributes": {
                              "argumentTypes": [
                                {
                                  "typeIdentifier": "t_struct$_Solution_$7657_memory_ptr",
                                  "typeString": "struct SolnSquareVerifier.Solution memory"
                                }
                              ],
                              "isConstant": false,
                              "isLValue": false,
                              "isPure": false,
                              "lValueRequested": false,
                              "member_name": "push",
                              "referencedDeclaration": null,
                              "type": "function (struct SolnSquareVerifier.Solution storage ref) returns (uint256)"
                            },
                            "children": [
                              {
                                "attributes": {
                                  "argumentTypes": null,
                                  "overloadedDeclarations": [
                                    null
                                  ],
                                  "referencedDeclaration": 7660,
                                  "type": "struct SolnSquareVerifier.Solution storage ref[] storage ref",
                                  "value": "solutions"
                                },
                                "id": 7686,
                                "name": "Identifier",
                                "src": "1552:9:6"
                              }
                            ],
                            "id": 7688,
                            "name": "MemberAccess",
                            "src": "1552:14:6"
                          },
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "overloadedDeclarations": [
                                null
                              ],
                              "referencedDeclaration": 7680,
                              "type": "struct SolnSquareVerifier.Solution memory",
                              "value": "_solution"
                            },
                            "id": 7689,
                            "name": "Identifier",
                            "src": "1567:9:6"
                          }
                        ],
                        "id": 7690,
                        "name": "FunctionCall",
                        "src": "1552:25:6"
                      }
                    ],
                    "id": 7691,
                    "name": "ExpressionStatement",
                    "src": "1552:25:6"
                  },
                  {
                    "children": [
                      {
                        "attributes": {
                          "argumentTypes": null,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": false,
                          "lValueRequested": false,
                          "operator": "=",
                          "type": "struct SolnSquareVerifier.Solution storage ref"
                        },
                        "children": [
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "isConstant": false,
                              "isLValue": true,
                              "isPure": false,
                              "lValueRequested": true,
                              "type": "struct SolnSquareVerifier.Solution storage ref"
                            },
                            "children": [
                              {
                                "attributes": {
                                  "argumentTypes": null,
                                  "overloadedDeclarations": [
                                    null
                                  ],
                                  "referencedDeclaration": 7664,
                                  "type": "mapping(bytes32 => struct SolnSquareVerifier.Solution storage ref)",
                                  "value": "uniqueSolutions"
                                },
                                "id": 7692,
                                "name": "Identifier",
                                "src": "1587:15:6"
                              },
                              {
                                "attributes": {
                                  "argumentTypes": null,
                                  "overloadedDeclarations": [
                                    null
                                  ],
                                  "referencedDeclaration": 7676,
                                  "type": "bytes32",
                                  "value": "_hashKey"
                                },
                                "id": 7693,
                                "name": "Identifier",
                                "src": "1603:8:6"
                              }
                            ],
                            "id": 7694,
                            "name": "IndexAccess",
                            "src": "1587:25:6"
                          },
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "overloadedDeclarations": [
                                null
                              ],
                              "referencedDeclaration": 7680,
                              "type": "struct SolnSquareVerifier.Solution memory",
                              "value": "_solution"
                            },
                            "id": 7695,
                            "name": "Identifier",
                            "src": "1615:9:6"
                          }
                        ],
                        "id": 7696,
                        "name": "Assignment",
                        "src": "1587:37:6"
                      }
                    ],
                    "id": 7697,
                    "name": "ExpressionStatement",
                    "src": "1587:37:6"
                  },
                  {
                    "children": [
                      {
                        "attributes": {
                          "argumentTypes": null,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": false,
                          "isStructConstructorCall": false,
                          "lValueRequested": false,
                          "names": [
                            null
                          ],
                          "type": "tuple()",
                          "type_conversion": false
                        },
                        "children": [
                          {
                            "attributes": {
                              "argumentTypes": [
                                {
                                  "typeIdentifier": "t_address",
                                  "typeString": "address"
                                },
                                {
                                  "typeIdentifier": "t_uint256",
                                  "typeString": "uint256"
                                }
                              ],
                              "overloadedDeclarations": [
                                null
                              ],
                              "referencedDeclaration": 7670,
                              "type": "function (address,uint256)",
                              "value": "SolutionAdded"
                            },
                            "id": 7698,
                            "name": "Identifier",
                            "src": "1639:13:6"
                          },
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "overloadedDeclarations": [
                                null
                              ],
                              "referencedDeclaration": 7672,
                              "type": "address",
                              "value": "_solvedByAddress"
                            },
                            "id": 7699,
                            "name": "Identifier",
                            "src": "1653:16:6"
                          },
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "overloadedDeclarations": [
                                null
                              ],
                              "referencedDeclaration": 7674,
                              "type": "uint256",
                              "value": "_index"
                            },
                            "id": 7700,
                            "name": "Identifier",
                            "src": "1671:6:6"
                          }
                        ],
                        "id": 7701,
                        "name": "FunctionCall",
                        "src": "1639:39:6"
                      }
                    ],
                    "id": 7702,
                    "name": "EmitStatement",
                    "src": "1634:44:6"
                  }
                ],
                "id": 7703,
                "name": "Block",
                "src": "1410:275:6"
              }
            ],
            "id": 7704,
            "name": "FunctionDefinition",
            "src": "1290:395:6"
          },
          {
            "attributes": {
              "documentation": null,
              "implemented": true,
              "isConstructor": false,
              "kind": "function",
              "modifiers": [
                null
              ],
              "name": "mintNewNFT",
              "scope": 7779,
              "stateMutability": "nonpayable",
              "superFunction": null,
              "visibility": "public"
            },
            "children": [
              {
                "children": [
                  {
                    "attributes": {
                      "constant": false,
                      "name": "_to",
                      "scope": 7778,
                      "stateVariable": false,
                      "storageLocation": "default",
                      "type": "address",
                      "value": null,
                      "visibility": "internal"
                    },
                    "children": [
                      {
                        "attributes": {
                          "name": "address",
                          "stateMutability": "nonpayable",
                          "type": "address"
                        },
                        "id": 7705,
                        "name": "ElementaryTypeName",
                        "src": "1808:7:6"
                      }
                    ],
                    "id": 7706,
                    "name": "VariableDeclaration",
                    "src": "1808:11:6"
                  },
                  {
                    "attributes": {
                      "constant": false,
                      "name": "_tokenId",
                      "scope": 7778,
                      "stateVariable": false,
                      "storageLocation": "default",
                      "type": "uint256",
                      "value": null,
                      "visibility": "internal"
                    },
                    "children": [
                      {
                        "attributes": {
                          "name": "uint256",
                          "type": "uint256"
                        },
                        "id": 7707,
                        "name": "ElementaryTypeName",
                        "src": "1829:7:6"
                      }
                    ],
                    "id": 7708,
                    "name": "VariableDeclaration",
                    "src": "1829:16:6"
                  },
                  {
                    "attributes": {
                      "constant": false,
                      "name": "a",
                      "scope": 7778,
                      "stateVariable": false,
                      "storageLocation": "memory",
                      "type": "uint256[2]",
                      "value": null,
                      "visibility": "internal"
                    },
                    "children": [
                      {
                        "attributes": {
                          "type": "uint256[2]"
                        },
                        "children": [
                          {
                            "attributes": {
                              "name": "uint256",
                              "type": "uint256"
                            },
                            "id": 7709,
                            "name": "ElementaryTypeName",
                            "src": "1855:7:6"
                          },
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "hexvalue": "32",
                              "isConstant": false,
                              "isLValue": false,
                              "isPure": true,
                              "lValueRequested": false,
                              "subdenomination": null,
                              "token": "number",
                              "type": "int_const 2",
                              "value": "2"
                            },
                            "id": 7710,
                            "name": "Literal",
                            "src": "1863:1:6"
                          }
                        ],
                        "id": 7711,
                        "name": "ArrayTypeName",
                        "src": "1855:10:6"
                      }
                    ],
                    "id": 7712,
                    "name": "VariableDeclaration",
                    "src": "1855:19:6"
                  },
                  {
                    "attributes": {
                      "constant": false,
                      "name": "b",
                      "scope": 7778,
                      "stateVariable": false,
                      "storageLocation": "memory",
                      "type": "uint256[2][2]",
                      "value": null,
                      "visibility": "internal"
                    },
                    "children": [
                      {
                        "attributes": {
                          "type": "uint256[2][2]"
                        },
                        "children": [
                          {
                            "attributes": {
                              "type": "uint256[2]"
                            },
                            "children": [
                              {
                                "attributes": {
                                  "name": "uint256",
                                  "type": "uint256"
                                },
                                "id": 7713,
                                "name": "ElementaryTypeName",
                                "src": "1884:7:6"
                              },
                              {
                                "attributes": {
                                  "argumentTypes": null,
                                  "hexvalue": "32",
                                  "isConstant": false,
                                  "isLValue": false,
                                  "isPure": true,
                                  "lValueRequested": false,
                                  "subdenomination": null,
                                  "token": "number",
                                  "type": "int_const 2",
                                  "value": "2"
                                },
                                "id": 7714,
                                "name": "Literal",
                                "src": "1892:1:6"
                              }
                            ],
                            "id": 7715,
                            "name": "ArrayTypeName",
                            "src": "1884:10:6"
                          },
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "hexvalue": "32",
                              "isConstant": false,
                              "isLValue": false,
                              "isPure": true,
                              "lValueRequested": false,
                              "subdenomination": null,
                              "token": "number",
                              "type": "int_const 2",
                              "value": "2"
                            },
                            "id": 7716,
                            "name": "Literal",
                            "src": "1895:1:6"
                          }
                        ],
                        "id": 7717,
                        "name": "ArrayTypeName",
                        "src": "1884:13:6"
                      }
                    ],
                    "id": 7718,
                    "name": "VariableDeclaration",
                    "src": "1884:22:6"
                  },
                  {
                    "attributes": {
                      "constant": false,
                      "name": "c",
                      "scope": 7778,
                      "stateVariable": false,
                      "storageLocation": "memory",
                      "type": "uint256[2]",
                      "value": null,
                      "visibility": "internal"
                    },
                    "children": [
                      {
                        "attributes": {
                          "type": "uint256[2]"
                        },
                        "children": [
                          {
                            "attributes": {
                              "name": "uint256",
                              "type": "uint256"
                            },
                            "id": 7719,
                            "name": "ElementaryTypeName",
                            "src": "1916:7:6"
                          },
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "hexvalue": "32",
                              "isConstant": false,
                              "isLValue": false,
                              "isPure": true,
                              "lValueRequested": false,
                              "subdenomination": null,
                              "token": "number",
                              "type": "int_const 2",
                              "value": "2"
                            },
                            "id": 7720,
                            "name": "Literal",
                            "src": "1924:1:6"
                          }
                        ],
                        "id": 7721,
                        "name": "ArrayTypeName",
                        "src": "1916:10:6"
                      }
                    ],
                    "id": 7722,
                    "name": "VariableDeclaration",
                    "src": "1916:19:6"
                  },
                  {
                    "attributes": {
                      "constant": false,
                      "name": "input",
                      "scope": 7778,
                      "stateVariable": false,
                      "storageLocation": "memory",
                      "type": "uint256[2]",
                      "value": null,
                      "visibility": "internal"
                    },
                    "children": [
                      {
                        "attributes": {
                          "type": "uint256[2]"
                        },
                        "children": [
                          {
                            "attributes": {
                              "name": "uint256",
                              "type": "uint256"
                            },
                            "id": 7723,
                            "name": "ElementaryTypeName",
                            "src": "1945:7:6"
                          },
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "hexvalue": "32",
                              "isConstant": false,
                              "isLValue": false,
                              "isPure": true,
                              "lValueRequested": false,
                              "subdenomination": null,
                              "token": "number",
                              "type": "int_const 2",
                              "value": "2"
                            },
                            "id": 7724,
                            "name": "Literal",
                            "src": "1953:1:6"
                          }
                        ],
                        "id": 7725,
                        "name": "ArrayTypeName",
                        "src": "1945:10:6"
                      }
                    ],
                    "id": 7726,
                    "name": "VariableDeclaration",
                    "src": "1945:23:6"
                  }
                ],
                "id": 7727,
                "name": "ParameterList",
                "src": "1798:176:6"
              },
              {
                "attributes": {
                  "parameters": [
                    null
                  ]
                },
                "children": [],
                "id": 7728,
                "name": "ParameterList",
                "src": "1982:0:6"
              },
              {
                "children": [
                  {
                    "attributes": {
                      "assignments": [
                        7730
                      ]
                    },
                    "children": [
                      {
                        "attributes": {
                          "constant": false,
                          "name": "_hashKey",
                          "scope": 7777,
                          "stateVariable": false,
                          "storageLocation": "default",
                          "type": "bytes32",
                          "value": null,
                          "visibility": "internal"
                        },
                        "children": [
                          {
                            "attributes": {
                              "name": "bytes32",
                              "type": "bytes32"
                            },
                            "id": 7729,
                            "name": "ElementaryTypeName",
                            "src": "2028:7:6"
                          }
                        ],
                        "id": 7730,
                        "name": "VariableDeclaration",
                        "src": "2028:16:6"
                      },
                      {
                        "attributes": {
                          "argumentTypes": null,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": false,
                          "isStructConstructorCall": false,
                          "lValueRequested": false,
                          "names": [
                            null
                          ],
                          "type": "bytes32",
                          "type_conversion": false
                        },
                        "children": [
                          {
                            "attributes": {
                              "argumentTypes": [
                                {
                                  "typeIdentifier": "t_bytes_memory_ptr",
                                  "typeString": "bytes memory"
                                }
                              ],
                              "overloadedDeclarations": [
                                null
                              ],
                              "referencedDeclaration": 10333,
                              "type": "function (bytes memory) pure returns (bytes32)",
                              "value": "keccak256"
                            },
                            "id": 7731,
                            "name": "Identifier",
                            "src": "2047:9:6"
                          },
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "isConstant": false,
                              "isLValue": false,
                              "isPure": false,
                              "isStructConstructorCall": false,
                              "lValueRequested": false,
                              "names": [
                                null
                              ],
                              "type": "bytes memory",
                              "type_conversion": false
                            },
                            "children": [
                              {
                                "attributes": {
                                  "argumentTypes": [
                                    {
                                      "typeIdentifier": "t_array$_t_uint256_$2_memory_ptr",
                                      "typeString": "uint256[2] memory"
                                    },
                                    {
                                      "typeIdentifier": "t_array$_t_array$_t_uint256_$2_memory_$2_memory_ptr",
                                      "typeString": "uint256[2] memory[2] memory"
                                    },
                                    {
                                      "typeIdentifier": "t_array$_t_uint256_$2_memory_ptr",
                                      "typeString": "uint256[2] memory"
                                    },
                                    {
                                      "typeIdentifier": "t_array$_t_uint256_$2_memory_ptr",
                                      "typeString": "uint256[2] memory"
                                    }
                                  ],
                                  "isConstant": false,
                                  "isLValue": false,
                                  "isPure": true,
                                  "lValueRequested": false,
                                  "member_name": "encodePacked",
                                  "referencedDeclaration": null,
                                  "type": "function () pure returns (bytes memory)"
                                },
                                "children": [
                                  {
                                    "attributes": {
                                      "argumentTypes": null,
                                      "overloadedDeclarations": [
                                        null
                                      ],
                                      "referencedDeclaration": 10326,
                                      "type": "abi",
                                      "value": "abi"
                                    },
                                    "id": 7732,
                                    "name": "Identifier",
                                    "src": "2057:3:6"
                                  }
                                ],
                                "id": 7733,
                                "name": "MemberAccess",
                                "src": "2057:16:6"
                              },
                              {
                                "attributes": {
                                  "argumentTypes": null,
                                  "overloadedDeclarations": [
                                    null
                                  ],
                                  "referencedDeclaration": 7712,
                                  "type": "uint256[2] memory",
                                  "value": "a"
                                },
                                "id": 7734,
                                "name": "Identifier",
                                "src": "2074:1:6"
                              },
                              {
                                "attributes": {
                                  "argumentTypes": null,
                                  "overloadedDeclarations": [
                                    null
                                  ],
                                  "referencedDeclaration": 7718,
                                  "type": "uint256[2] memory[2] memory",
                                  "value": "b"
                                },
                                "id": 7735,
                                "name": "Identifier",
                                "src": "2077:1:6"
                              },
                              {
                                "attributes": {
                                  "argumentTypes": null,
                                  "overloadedDeclarations": [
                                    null
                                  ],
                                  "referencedDeclaration": 7722,
                                  "type": "uint256[2] memory",
                                  "value": "c"
                                },
                                "id": 7736,
                                "name": "Identifier",
                                "src": "2080:1:6"
                              },
                              {
                                "attributes": {
                                  "argumentTypes": null,
                                  "overloadedDeclarations": [
                                    null
                                  ],
                                  "referencedDeclaration": 7726,
                                  "type": "uint256[2] memory",
                                  "value": "input"
                                },
                                "id": 7737,
                                "name": "Identifier",
                                "src": "2083:5:6"
                              }
                            ],
                            "id": 7738,
                            "name": "FunctionCall",
                            "src": "2057:32:6"
                          }
                        ],
                        "id": 7739,
                        "name": "FunctionCall",
                        "src": "2047:43:6"
                      }
                    ],
                    "id": 7740,
                    "name": "VariableDeclarationStatement",
                    "src": "2028:62:6"
                  },
                  {
                    "children": [
                      {
                        "attributes": {
                          "argumentTypes": null,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": false,
                          "isStructConstructorCall": false,
                          "lValueRequested": false,
                          "names": [
                            null
                          ],
                          "type": "tuple()",
                          "type_conversion": false
                        },
                        "children": [
                          {
                            "attributes": {
                              "argumentTypes": [
                                {
                                  "typeIdentifier": "t_bool",
                                  "typeString": "bool"
                                },
                                {
                                  "typeIdentifier": "t_stringliteral_2315cc0be0c84d95c6555f49c4aaff94a4237d5c27e65c956a6ba6a8672d8293",
                                  "typeString": "literal_string \"Error! solution has already been used\""
                                }
                              ],
                              "overloadedDeclarations": [
                                10342,
                                10343
                              ],
                              "referencedDeclaration": 10343,
                              "type": "function (bool,string memory) pure",
                              "value": "require"
                            },
                            "id": 7741,
                            "name": "Identifier",
                            "src": "2174:7:6"
                          },
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "commonType": {
                                "typeIdentifier": "t_address",
                                "typeString": "address"
                              },
                              "isConstant": false,
                              "isLValue": false,
                              "isPure": false,
                              "lValueRequested": false,
                              "operator": "==",
                              "type": "bool"
                            },
                            "children": [
                              {
                                "attributes": {
                                  "argumentTypes": null,
                                  "isConstant": false,
                                  "isLValue": true,
                                  "isPure": false,
                                  "lValueRequested": false,
                                  "member_name": "solvedByAddress",
                                  "referencedDeclaration": 7656,
                                  "type": "address"
                                },
                                "children": [
                                  {
                                    "attributes": {
                                      "argumentTypes": null,
                                      "isConstant": false,
                                      "isLValue": true,
                                      "isPure": false,
                                      "lValueRequested": false,
                                      "type": "struct SolnSquareVerifier.Solution storage ref"
                                    },
                                    "children": [
                                      {
                                        "attributes": {
                                          "argumentTypes": null,
                                          "overloadedDeclarations": [
                                            null
                                          ],
                                          "referencedDeclaration": 7664,
                                          "type": "mapping(bytes32 => struct SolnSquareVerifier.Solution storage ref)",
                                          "value": "uniqueSolutions"
                                        },
                                        "id": 7742,
                                        "name": "Identifier",
                                        "src": "2195:15:6"
                                      },
                                      {
                                        "attributes": {
                                          "argumentTypes": null,
                                          "overloadedDeclarations": [
                                            null
                                          ],
                                          "referencedDeclaration": 7730,
                                          "type": "bytes32",
                                          "value": "_hashKey"
                                        },
                                        "id": 7743,
                                        "name": "Identifier",
                                        "src": "2211:8:6"
                                      }
                                    ],
                                    "id": 7744,
                                    "name": "IndexAccess",
                                    "src": "2195:25:6"
                                  }
                                ],
                                "id": 7745,
                                "name": "MemberAccess",
                                "src": "2195:41:6"
                              },
                              {
                                "attributes": {
                                  "argumentTypes": null,
                                  "isConstant": false,
                                  "isLValue": false,
                                  "isPure": true,
                                  "isStructConstructorCall": false,
                                  "lValueRequested": false,
                                  "names": [
                                    null
                                  ],
                                  "type": "address payable",
                                  "type_conversion": true
                                },
                                "children": [
                                  {
                                    "attributes": {
                                      "argumentTypes": [
                                        {
                                          "typeIdentifier": "t_rational_0_by_1",
                                          "typeString": "int_const 0"
                                        }
                                      ],
                                      "isConstant": false,
                                      "isLValue": false,
                                      "isPure": true,
                                      "lValueRequested": false,
                                      "type": "type(address)",
                                      "value": "address"
                                    },
                                    "id": 7746,
                                    "name": "ElementaryTypeNameExpression",
                                    "src": "2240:7:6"
                                  },
                                  {
                                    "attributes": {
                                      "argumentTypes": null,
                                      "hexvalue": "30",
                                      "isConstant": false,
                                      "isLValue": false,
                                      "isPure": true,
                                      "lValueRequested": false,
                                      "subdenomination": null,
                                      "token": "number",
                                      "type": "int_const 0",
                                      "value": "0"
                                    },
                                    "id": 7747,
                                    "name": "Literal",
                                    "src": "2248:1:6"
                                  }
                                ],
                                "id": 7748,
                                "name": "FunctionCall",
                                "src": "2240:10:6"
                              }
                            ],
                            "id": 7749,
                            "name": "BinaryOperation",
                            "src": "2195:55:6"
                          },
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "hexvalue": "4572726f722120736f6c7574696f6e2068617320616c7265616479206265656e2075736564",
                              "isConstant": false,
                              "isLValue": false,
                              "isPure": true,
                              "lValueRequested": false,
                              "subdenomination": null,
                              "token": "string",
                              "type": "literal_string \"Error! solution has already been used\"",
                              "value": "Error! solution has already been used"
                            },
                            "id": 7750,
                            "name": "Literal",
                            "src": "2264:39:6"
                          }
                        ],
                        "id": 7751,
                        "name": "FunctionCall",
                        "src": "2174:139:6"
                      }
                    ],
                    "id": 7752,
                    "name": "ExpressionStatement",
                    "src": "2174:139:6"
                  },
                  {
                    "children": [
                      {
                        "attributes": {
                          "argumentTypes": null,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": false,
                          "isStructConstructorCall": false,
                          "lValueRequested": false,
                          "names": [
                            null
                          ],
                          "type": "tuple()",
                          "type_conversion": false
                        },
                        "children": [
                          {
                            "attributes": {
                              "argumentTypes": [
                                {
                                  "typeIdentifier": "t_bool",
                                  "typeString": "bool"
                                },
                                {
                                  "typeIdentifier": "t_stringliteral_bc32829253e8a4a841dc3cda5c64e23721d85ebe96aa2bda94b72d78ff532c4a",
                                  "typeString": "literal_string \"Error! solution can not be verified\""
                                }
                              ],
                              "overloadedDeclarations": [
                                10342,
                                10343
                              ],
                              "referencedDeclaration": 10343,
                              "type": "function (bool,string memory) pure",
                              "value": "require"
                            },
                            "id": 7753,
                            "name": "Identifier",
                            "src": "2351:7:6"
                          },
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "isConstant": false,
                              "isLValue": false,
                              "isPure": false,
                              "isStructConstructorCall": false,
                              "lValueRequested": false,
                              "names": [
                                null
                              ],
                              "type": "bool",
                              "type_conversion": false
                            },
                            "children": [
                              {
                                "attributes": {
                                  "argumentTypes": [
                                    {
                                      "typeIdentifier": "t_array$_t_uint256_$2_memory_ptr",
                                      "typeString": "uint256[2] memory"
                                    },
                                    {
                                      "typeIdentifier": "t_array$_t_array$_t_uint256_$2_memory_$2_memory_ptr",
                                      "typeString": "uint256[2] memory[2] memory"
                                    },
                                    {
                                      "typeIdentifier": "t_array$_t_uint256_$2_memory_ptr",
                                      "typeString": "uint256[2] memory"
                                    },
                                    {
                                      "typeIdentifier": "t_array$_t_uint256_$2_memory_ptr",
                                      "typeString": "uint256[2] memory"
                                    }
                                  ],
                                  "isConstant": false,
                                  "isLValue": false,
                                  "isPure": false,
                                  "lValueRequested": false,
                                  "member_name": "verifyTx",
                                  "referencedDeclaration": 10323,
                                  "type": "function (uint256[2] memory,uint256[2] memory[2] memory,uint256[2] memory,uint256[2] memory) external returns (bool)"
                                },
                                "children": [
                                  {
                                    "attributes": {
                                      "argumentTypes": null,
                                      "overloadedDeclarations": [
                                        null
                                      ],
                                      "referencedDeclaration": 7638,
                                      "type": "contract ISquareVerifier",
                                      "value": "squareContract"
                                    },
                                    "id": 7754,
                                    "name": "Identifier",
                                    "src": "2372:14:6"
                                  }
                                ],
                                "id": 7755,
                                "name": "MemberAccess",
                                "src": "2372:23:6"
                              },
                              {
                                "attributes": {
                                  "argumentTypes": null,
                                  "overloadedDeclarations": [
                                    null
                                  ],
                                  "referencedDeclaration": 7712,
                                  "type": "uint256[2] memory",
                                  "value": "a"
                                },
                                "id": 7756,
                                "name": "Identifier",
                                "src": "2396:1:6"
                              },
                              {
                                "attributes": {
                                  "argumentTypes": null,
                                  "overloadedDeclarations": [
                                    null
                                  ],
                                  "referencedDeclaration": 7718,
                                  "type": "uint256[2] memory[2] memory",
                                  "value": "b"
                                },
                                "id": 7757,
                                "name": "Identifier",
                                "src": "2399:1:6"
                              },
                              {
                                "attributes": {
                                  "argumentTypes": null,
                                  "overloadedDeclarations": [
                                    null
                                  ],
                                  "referencedDeclaration": 7722,
                                  "type": "uint256[2] memory",
                                  "value": "c"
                                },
                                "id": 7758,
                                "name": "Identifier",
                                "src": "2402:1:6"
                              },
                              {
                                "attributes": {
                                  "argumentTypes": null,
                                  "overloadedDeclarations": [
                                    null
                                  ],
                                  "referencedDeclaration": 7726,
                                  "type": "uint256[2] memory",
                                  "value": "input"
                                },
                                "id": 7759,
                                "name": "Identifier",
                                "src": "2405:5:6"
                              }
                            ],
                            "id": 7760,
                            "name": "FunctionCall",
                            "src": "2372:39:6"
                          },
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "hexvalue": "4572726f722120736f6c7574696f6e2063616e206e6f74206265207665726966696564",
                              "isConstant": false,
                              "isLValue": false,
                              "isPure": true,
                              "lValueRequested": false,
                              "subdenomination": null,
                              "token": "string",
                              "type": "literal_string \"Error! solution can not be verified\"",
                              "value": "Error! solution can not be verified"
                            },
                            "id": 7761,
                            "name": "Literal",
                            "src": "2425:37:6"
                          }
                        ],
                        "id": 7762,
                        "name": "FunctionCall",
                        "src": "2351:121:6"
                      }
                    ],
                    "id": 7763,
                    "name": "ExpressionStatement",
                    "src": "2351:121:6"
                  },
                  {
                    "children": [
                      {
                        "attributes": {
                          "argumentTypes": null,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": false,
                          "isStructConstructorCall": false,
                          "lValueRequested": false,
                          "names": [
                            null
                          ],
                          "type": "tuple()",
                          "type_conversion": false
                        },
                        "children": [
                          {
                            "attributes": {
                              "argumentTypes": [
                                {
                                  "typeIdentifier": "t_address",
                                  "typeString": "address"
                                },
                                {
                                  "typeIdentifier": "t_uint256",
                                  "typeString": "uint256"
                                },
                                {
                                  "typeIdentifier": "t_bytes32",
                                  "typeString": "bytes32"
                                }
                              ],
                              "overloadedDeclarations": [
                                null
                              ],
                              "referencedDeclaration": 7704,
                              "type": "function (address,uint256,bytes32)",
                              "value": "addSolution"
                            },
                            "id": 7764,
                            "name": "Identifier",
                            "src": "2483:11:6"
                          },
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "overloadedDeclarations": [
                                null
                              ],
                              "referencedDeclaration": 7706,
                              "type": "address",
                              "value": "_to"
                            },
                            "id": 7765,
                            "name": "Identifier",
                            "src": "2495:3:6"
                          },
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "overloadedDeclarations": [
                                null
                              ],
                              "referencedDeclaration": 7708,
                              "type": "uint256",
                              "value": "_tokenId"
                            },
                            "id": 7766,
                            "name": "Identifier",
                            "src": "2500:8:6"
                          },
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "overloadedDeclarations": [
                                null
                              ],
                              "referencedDeclaration": 7730,
                              "type": "bytes32",
                              "value": "_hashKey"
                            },
                            "id": 7767,
                            "name": "Identifier",
                            "src": "2510:8:6"
                          }
                        ],
                        "id": 7768,
                        "name": "FunctionCall",
                        "src": "2483:36:6"
                      }
                    ],
                    "id": 7769,
                    "name": "ExpressionStatement",
                    "src": "2483:36:6"
                  },
                  {
                    "children": [
                      {
                        "attributes": {
                          "argumentTypes": null,
                          "isConstant": false,
                          "isLValue": false,
                          "isPure": false,
                          "isStructConstructorCall": false,
                          "lValueRequested": false,
                          "names": [
                            null
                          ],
                          "type": "bool",
                          "type_conversion": false
                        },
                        "children": [
                          {
                            "attributes": {
                              "argumentTypes": [
                                {
                                  "typeIdentifier": "t_address",
                                  "typeString": "address"
                                },
                                {
                                  "typeIdentifier": "t_uint256",
                                  "typeString": "uint256"
                                }
                              ],
                              "isConstant": false,
                              "isLValue": false,
                              "isPure": false,
                              "lValueRequested": false,
                              "member_name": "mint",
                              "referencedDeclaration": 1356,
                              "type": "function (address,uint256) returns (bool)"
                            },
                            "children": [
                              {
                                "attributes": {
                                  "argumentTypes": null,
                                  "overloadedDeclarations": [
                                    null
                                  ],
                                  "referencedDeclaration": 10396,
                                  "type": "contract super SolnSquareVerifier",
                                  "value": "super"
                                },
                                "id": 7770,
                                "name": "Identifier",
                                "src": "2596:5:6"
                              }
                            ],
                            "id": 7772,
                            "name": "MemberAccess",
                            "src": "2596:10:6"
                          },
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "overloadedDeclarations": [
                                null
                              ],
                              "referencedDeclaration": 7706,
                              "type": "address",
                              "value": "_to"
                            },
                            "id": 7773,
                            "name": "Identifier",
                            "src": "2607:3:6"
                          },
                          {
                            "attributes": {
                              "argumentTypes": null,
                              "overloadedDeclarations": [
                                null
                              ],
                              "referencedDeclaration": 7708,
                              "type": "uint256",
                              "value": "_tokenId"
                            },
                            "id": 7774,
                            "name": "Identifier",
                            "src": "2612:8:6"
                          }
                        ],
                        "id": 7775,
                        "name": "FunctionCall",
                        "src": "2596:25:6"
                      }
                    ],
                    "id": 7776,
                    "name": "ExpressionStatement",
                    "src": "2596:25:6"
                  }
                ],
                "id": 7777,
                "name": "Block",
                "src": "1982:646:6"
              }
            ],
            "id": 7778,
            "name": "FunctionDefinition",
            "src": "1779:849:6"
          }
        ],
        "id": 7779,
        "name": "ContractDefinition",
        "src": "486:2144:6"
      }
    ],
    "id": 7780,
    "name": "SourceUnit",
    "src": "0:2631:6"
  },
  "compiler": {
    "name": "solc",
    "version": "0.5.16+commit.9c3226ce.Emscripten.clang"
  },
  "networks": {
    "4": {
      "events": {},
      "links": {},
      "address": "0x41874354B630d71247d158db68b0aE6DE34B4433",
      "transactionHash": "0x934170ef7daf33709532b184b831e421f1901541c232a414072be50c30f83370"
    },
    "1636148265256": {
      "events": {},
      "links": {},
      "address": "0xDAE17d71B88BB08Eca4908894c746A10575B8f77",
      "transactionHash": "0x726549f9144c13956ce2a89b66e81a9544e4539ae2cf7812e007512c9f921aa7"
    },
    "1639095052871": {
      "events": {},
      "links": {},
      "address": "0x52317c71675a144d205F3851Fc0C84318F5F2047",
      "transactionHash": "0x030795e3de7685dbabee0789efbd786382714ff7606eb0d03f678669ddc67305"
    }
  },
  "schemaVersion": "3.4.3",
  "updatedAt": "2021-12-11T01:20:19.082Z",
  "networkType": "ethereum",
  "devdoc": {
    "methods": {
      "approve(address,uint256)": {
        "details": "Approves another address to transfer the given token ID"
      },
      "isApprovedForAll(address,address)": {
        "details": "Tells whether an operator is approved by a given owner",
        "params": {
          "operator": "operator address which you want to query the approval of",
          "owner": "owner address which you want to query the approval of"
        },
        "return": "bool whether the given operator is approved by the given owner"
      },
      "setApprovalForAll(address,bool)": {
        "details": "Sets or unsets the approval of a given operator An operator is allowed to transfer all tokens of the sender on their behalf",
        "params": {
          "approved": "representing the status of the approval to be set",
          "to": "operator address to set the approval"
        }
      },
      "supportsInterface(bytes4)": {
        "details": "implement supportsInterface(bytes4) using a lookup table"
      },
      "tokenByIndex(uint256)": {
        "details": "Gets the token ID at a given index of all the tokens in this contract Reverts if the index is greater or equal to the total number of tokens",
        "params": {
          "index": "uint256 representing the index to be accessed of the tokens list"
        },
        "return": "uint256 token ID at the given index of the tokens list"
      },
      "tokenOfOwnerByIndex(address,uint256)": {
        "details": "Gets the token ID at a given index of the tokens list of the requested owner",
        "params": {
          "index": "uint256 representing the index to be accessed of the requested tokens list",
          "owner": "address owning the tokens list to be accessed"
        },
        "return": "uint256 token ID at the given index of the tokens list owned by the requested address"
      },
      "totalSupply()": {
        "details": "Gets the total amount of tokens stored by the contract",
        "return": "uint256 representing the total amount of tokens"
      }
    }
  },
  "userdoc": {
    "methods": {}
  }
}
```

# Project Resources

* [Remix - Solidity IDE](https://remix.ethereum.org/)
* [Visual Studio Code](https://code.visualstudio.com/)
* [Truffle Framework](https://truffleframework.com/)
* [Ganache - One Click Blockchain](https://truffleframework.com/ganache)
* [Open Zeppelin ](https://openzeppelin.org/)
* [Interactive zero knowledge 3-colorability demonstration](http://web.mit.edu/~ezyang/Public/graph/svg.html)
* [Docker](https://docs.docker.com/install/)
* [ZoKrates](https://github.com/Zokrates/ZoKrates)
