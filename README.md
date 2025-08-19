# Staking DApp Project

This project demonstrates a basic staking DApp using Hardhat, OpenZeppelin, and Ethers.js. It includes sample contracts for a lock mechanism, an ERC20 token, and a staking contract.

## Project Structure

- `contracts/` — Solidity smart contracts (`Lock.sol`, `MyToken.sol`, `Staking.sol`)
- `scripts/` — Deployment scripts
- `test/` — Unit tests
- `ignition/` — Hardhat Ignition modules
- `artifacts/` — Compiled contract artifacts

## Getting Started

1. **Install dependencies:**
   ```sh
   npm install
   ```

2. **Configure environment:**
   - Add your private key to the `.env` file:
     ```
     PRIVATE_KEY=your_private_key_here
     ```

3. **Compile contracts:**
   ```sh
   npx hardhat compile
   ```

4. **Deploy contracts:**
   ```sh
   npx hardhat run scripts/deploy.js --network coretestnet
   ```

## Deployed Contracts

- **MyToken Address:** `0xE20c15A44Bf49Ab64588F83077664aF8b051b38f`
- **Staking Contract Address:** `0x2D625602d0E2Be5f98CC75d7e622396aFaa14C41`
- **Wallet
