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
npx thirdweb deploy
```

1. Deploy the implementation contract, `TokenBoundAccount` as this will be needed as a constructor parameter for the factory.
2. Deploy the factory contract `TokenBoundAccountFactory`

In both cases, set the `EntryPoint` contract address as `0x5FF137D4b0FDCD49DcA30c7CF57E578a026d2789`.
This address is the same on all chains it is deployed to.


