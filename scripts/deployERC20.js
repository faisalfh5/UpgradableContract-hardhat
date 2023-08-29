const { ethers, upgrades } = require("hardhat");
const web3 = require("web3");

async function main() {
  const contract = await ethers.getContractFactory("ERC20Token");
  console.log("🚀 contract deploying...");

  let fc = web3.eth.abi.encodeFunctionCall(
    {
      name: "initialize",
      type: "function",
      inputs: [
        {
          type: "string",
          name: "_name",
        },
        {
          type: "string",
          name: "_symbol",
        },
        {
          type: "uint256",
          name: "_totalSupplyh",
        },
      ],
    },
    ["NFT Marketplace", "NFTM", "3"]
  );

  const deployContract = await upgrades.deployeProxy(contract, fc);

  await deployContract.deployed();
  console.log("Box deployed to:", deployContract.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
