// SPDX-License-Identifier: kriti
pragma solidity ^0.8.0;

contract PayableExample {
    // Event to log received ETH
    event Received(address sender, uint amount);

    // Fallback function (to receive ETH)
    receive() external payable {
        emit Received(msg.sender, msg.value);
    }

    // Check balance of contract
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}