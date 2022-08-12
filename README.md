# Solidity Basics From Hashlips's Video Series

- I will be using Remix and Hardhat during this series.
- npm init --yes
- npm install --save-dev hardhat

# Youtube Links

### Part 1

[![Thumbnail](https://img.youtube.com/vi/sngKPYfUgkc/maxresdefault.jpg)](https://youtu.be/sngKPYfUgkc)

### Part 2

[![Thumbnail](https://img.youtube.com/vi/C70XrG5yGQo/maxresdefault.jpg)](https://youtu.be/C70XrG5yGQo)

### Part 3

[![Thumbnail](https://img.youtube.com/vi/AFma5JYgIIE/maxresdefault.jpg)](https://youtu.be/AFma5JYgIIE)

### Part 4

[![Thumbnail](https://img.youtube.com/vi/KlO23rhqEnw/maxresdefault.jpg)](https://youtu.be/KlO23rhqEnw)

### Part 5

[![Thumbnail](https://img.youtube.com/vi/64SiCO_GzDo/maxresdefault.jpg)](https://youtu.be/64SiCO_GzDo)

### Part 6

[![Thumbnail](https://img.youtube.com/vi/t9Ar0i_IwZ0/maxresdefault.jpg)](https://youtu.be/t9Ar0i_IwZ0)

### Part 7

[![Thumbnail](https://img.youtube.com/vi/MpWZStxeabk/maxresdefault.jpg)](https://youtu.be/MpWZStxeabk)

### Part 8

[![Thumbnail](https://img.youtube.com/vi/P1J0HeQINcM/maxresdefault.jpg)](https://youtu.be/P1J0HeQINcM)

### Part 9

[![Thumbnail](https://img.youtube.com/vi/zzLhhza5Cho/maxresdefault.jpg)](https://youtu.be/zzLhhza5Cho)

### Part 10

[![Thumbnail](https://img.youtube.com/vi/KQ8bTt6Jhjk/maxresdefault.jpg)](https://youtu.be/KQ8bTt6Jhjk)

### Part 11

[![Thumbnail](https://img.youtube.com/vi/SPeKei4K-18/maxresdefault.jpg)](https://youtu.be/SPeKei4K-18)

# Advanced Sample Hardhat Project

This project demonstrates an advanced Hardhat use case, integrating other tools commonly used alongside Hardhat in the ecosystem.

The project comes with a sample contract, a test for that contract, a sample script that deploys that contract, and an example of a task implementation, which simply lists the available accounts. It also comes with a variety of other tools, preconfigured to work with the project code.

Try running some of the following tasks:

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node
npx hardhat help
REPORT_GAS=true npx hardhat test
npx hardhat coverage
npx hardhat run scripts/deploy.js
node scripts/deploy.js
npx eslint '**/*.js'
npx eslint '**/*.js' --fix
npx prettier '**/*.{json,sol,md}' --check
npx prettier '**/*.{json,sol,md}' --write
npx solhint 'contracts/**/*.sol'
npx solhint 'contracts/**/*.sol' --fix
```

# Etherscan verification

To try out Etherscan verification, you first need to deploy a contract to an Ethereum network that's supported by Etherscan, such as Ropsten.

In this project, copy the .env.example file to a file named .env, and then edit it to fill in the details. Enter your Etherscan API key, your Ropsten node URL (eg from Alchemy), and the private key of the account which will send the deployment transaction. With a valid .env file in place, first deploy your contract:

```shell
hardhat run --network ropsten scripts/deploy.js
```

Then, copy the deployment address and paste it in to replace `DEPLOYED_CONTRACT_ADDRESS` in this command:

```shell
npx hardhat verify --network ropsten DEPLOYED_CONTRACT_ADDRESS "Hello, Hardhat!"
```
