
# NFT Swap Project

This repository implements an ERC-6551 token-bound account system, enabling users to swap NFTs and tokens directly from the wallet tied to their NFTs. It leverages thirdweb for contract deployment, along with a flexible design allowing swaps on Uniswap or other DEXs.

```
/NFT-swap/
│
├── .github/
│   └── workflows/
│       └── deploy.yaml             // CI/CD automation using GitHub Actions for contract deployment
│
├── erc-6551/
│   └── TokenBoundAccount.sol       // ERC-6551 smart contract implementation for token-bound accounts
│
├── lib/
│   └── Utils.sol                   // Utility libraries for supporting contract logic
│
├── src/
│   └── NFTSwap.sol                 // Main smart contract handling NFT swaps
│
├── .gitignore                      // Configuration to ignore unnecessary files in version control
├── .gitmodules                     // Git submodules configuration
├── deployArgs.json                 // Deployment parameters for the smart contracts
├── foundry.toml                    // Foundry configuration file for Solidity development
├── package.json                    // Node.js dependencies and scripts
├── remappings.txt                  // Dependency path remappings for Foundry
├── README.md                       // Documentation for the project
```

## Features

- **ERC-6551 Integration**: Manages assets via token-bound accounts.
- **Swap Executor**: Facilitates token swapping through decentralized exchanges.
- **Modular Contract Deployment**: Contracts are deployable with thirdweb's deployment suite.

## Prerequisites

- [Foundry](https://getfoundry.sh/) (for contract development and testing)
- Node.js and npm (for interacting scripts)
- Thirdweb CLI for contract deployment


### Swapping Tokens

Utilize the `swapWithTBA.js` script for executing swaps from a token-bound account.

## Contract Overview

- `ERC6551Registry.sol`: ERC-6551 registry to create token-bound accounts.
- `TBAFactory.sol`: Factory contract for deploying accounts.
- `SwapExecutor.sol`: Facilitates token swaps via connected accounts.

## Getting Started

```bash
npx thirdweb create --contract --template erc-6551
```

## Building the project & running tests

_Note: This repository is a [Foundry](https://book.getfoundry.sh/) project, so make sure that [Foundry is installed](https://book.getfoundry.sh/getting-started/installation) locally._

To make sure that Foundry is up to date and install dependencies, run the following command:

```bash
foundryup && forge install
```

Once the dependencies are installed, tests can be run:

```bash
forge test
```

## Deploying Contracts

To deploy *ANY* contract, with no requirements, use thirdweb Deploy:

```bash
npx thirdweb deploy -k "key"
```

1. Deploy the implementation contract, `TokenBoundAccount` as this will be needed as a constructor parameter for the factory.
2. Deploy the factory contract `TokenBoundAccountFactory`

In both cases, set the `EntryPoint` contract address as `0x5FF137D4b0FDCD49DcA30c7CF57E578a026d2789`.
This address is the same on all chains it is deployed to.


