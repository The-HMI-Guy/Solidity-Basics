// SPDX-License-Identifier: MIT
import "hardhat/console.sol";

pragma solidity ^0.8.0;

contract MyPayable {
    address payable public myAddress;

    constructor(){
        myAddress = payable(msg.sender);
    }
    function deposit() public {
        //payable(msg.sender).transfer(100);
    }
}