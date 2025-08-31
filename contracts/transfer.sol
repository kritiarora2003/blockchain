// SPDX-License-Identifier: kriti
pragma solidity ^0.8.0;

contract ethTransfer {
    address owner;
    constructor(){
        owner=msg.sender; //me the deployer
    }
    function transferEth(address _to, uint _amount) public payable {
        //function only allow to send when payable is there 
        
        require(owner==msg.sender, "Illegal access");//check if sender account has sufficient amount or not and the guy who is invoking the function is the owner of the function 
        //for this we need a constructor to take in the owner when the contract is deployed
        require(address(this).balance>= _amount, "Insufficient amount");
        (bool success, ) = _to.call{value: _amount}("");

    } 
}