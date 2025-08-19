const hre = require("hardhat");

async function main() {
  // Deploy MyToken
  const Token = await hre.ethers.getContractFactory("MyToken");
  const token = await Token.deploy();
  await token.waitForDeployment();   // ✅ replaces token.deployed()
  console.log("Token deployed to:", await token.getAddress());

  // Deploy Staking with token address
  const Staking = await hre.ethers.getContractFactory("Staking");
  const staking = await Staking.deploy(await token.getAddress());
  await staking.waitForDeployment(); // ✅ replaces staking.deployed()
  console.log("Staking contract deployed to:", await staking.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

