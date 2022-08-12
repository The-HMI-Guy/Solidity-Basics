# Solidity Basics From Hashlips's Video Series

- I will be using Remix and Hardhat during this series.
- npm init --yes
- npm install --save-dev hardhat

# Youtube Links

### Part 1

[![Thumbnail](https://img.youtube.com/vi/sngKPYfUgkc/maxresdefault.jpg)](https://youtu.be/sngKPYfUgkc)

### Part 2

[![Thumbnail](https://img.youtube.com/vi/C70XrG5yGQo&t=5s/maxresdefault.jpg)](https://youtu.be/C70XrG5yGQo)

### Part 3

[![Thumbnail](https://img.youtube.com/vi/AFma5JYgIIE&t=1s/maxresdefault.jpg)](https://youtu.be/AFma5JYgIIE)

### Part 4

- https://www.youtube.com/watch?v=AFma5JYgIIE&list=PLvfQp12V0hS2PQd9-X-E2AjmXj1o05WOo&index=4

### Part 5

- https://www.youtube.com/watch?v=AFma5JYgIIE&list=PLvfQp12V0hS2PQd9-X-E2AjmXj1o05WOo&index=5

### Part 6

- https://www.youtube.com/watch?v=AFma5JYgIIE&list=PLvfQp12V0hS2PQd9-X-E2AjmXj1o05WOo&index=6

### Part 7

- https://www.youtube.com/watch?v=AFma5JYgIIE&list=PLvfQp12V0hS2PQd9-X-E2AjmXj1o05WOo&index=7

### Part 8

- https://www.youtube.com/watch?v=AFma5JYgIIE&list=PLvfQp12V0hS2PQd9-X-E2AjmXj1o05WOo&index=8

### Part 9

- https://www.youtube.com/watch?v=AFma5JYgIIE&list=PLvfQp12V0hS2PQd9-X-E2AjmXj1o05WOo&index=9

### Part 10

- https://www.youtube.com/watch?v=AFma5JYgIIE&list=PLvfQp12V0hS2PQd9-X-E2AjmXj1o05WOo&index=10

### Part 11

- https://www.youtube.com/watch?v=AFma5JYgIIE&list=PLvfQp12V0hS2PQd9-X-E2AjmXj1o05WOo&index=11

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
