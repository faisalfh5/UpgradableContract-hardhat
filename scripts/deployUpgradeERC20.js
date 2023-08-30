const { ethers, upgrades } = require("hardhat");

const proxyContract = "0x5B070EBf01F4B38F3a23db37103DB4b90c820eb7";

async function main() {
  const contract = await ethers.getContractFactory("UpdateERC20Token");
  console.log("🚀 contract deploying...");

  const deployContract = await upgrades.deployeProxy(proxyContract, contract);
  await deployContract.deployed();
  console.log("Box deployed to:", deployContract.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
