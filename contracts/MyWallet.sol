// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;
contract Mywallet {
    address owner;
    constructor(){
        owner = msg.sender;
    }

    function deposit() public payable {}

    function withdraw() public {
        require(msg.sender == owner, "You are not owner");
        payable(msg.sender).transfer(address(this).balance);
    }
}