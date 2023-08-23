import { ethers, upgrades } from "hardhat";

async function main() {
  const contract = await ethers.getContractFactory("ERC20Token");

  const deployContract = await upgrades.deployeProxy(contract);

  await deployContract.deployed();
  console.log("Box deployed to:", deployContract.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
