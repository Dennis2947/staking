// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Staking {
    IERC20 public token;

    mapping(address => uint256) public balances;

    constructor(address _token) {
        token = IERC20(_token);
    }

    function stake(uint256 amount) external {
        require(amount > 0, "Amount must be > 0");
        token.transferFrom(msg.sender, address(this), amount);
        balances[msg.sender] += amount;
    }

    function withdraw(uint256 amount) external {
        require(balances[msg.sender] >= amount, "Not enough staked");
        balances[msg.sender] -= amount;
        token.transfer(msg.sender, amount);
    }
}
