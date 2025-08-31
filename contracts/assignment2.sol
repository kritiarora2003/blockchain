// SPDX-License-Identifier: kriti
pragma solidity ^0.8.0;

contract SimpleWallet {
    address public owner;

    constructor() {
        owner = msg.sender; // whoever deploys becomes the owner
    }

    // Deposit ETH into the contract (anyone can deposit)
    function deposit() external payable {}

    // Owner can send ETH to any address (EOA or Contract)
    function sendTo(address payable recipient, uint amount) external {
        require(msg.sender == owner, "Only owner can send");
        require(address(this).balance >= amount, "Not enough funds");
        recipient.transfer(amount);
    }

    // Check total ETH stored in the contract
    function getBalance() external view returns (uint) {
        return address(this).balance;
    }

    // Also accept plain ETH transfers
    receive() external payable {}
}
