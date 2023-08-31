First Run this Command
```shell
npm init or npm -i
or
yarn
```

After that you can Update the smart contracts ".sol files" according to your desire code.

then make the .env file and add required environment variable keys there.

# Compiling the contract
To compile the contract
```shell
npx hardhat compile
```

# Testing the Contract
To run tests with Hardhat, you just need to type the following:
```shell
npx hardhat test
```

# Deploying on Polygon Network
Run this command in root of the project directory:
```shell
npx hardat run scripts/[deploy script name] -- network polygon_mumbai

