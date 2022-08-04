// SPDX-License-Identifier: MIT
import "hardhat/console.sol";

pragma solidity ^0.8.0;

contract MyPayable {
    address payable public myAddress;

    constructor() {
        myAddress = payable(msg.sender);
    }

    function deposit() public payable {}

    function getThisContractBalance() public view returns (uint256){
        uint256 amount = address(this).balance;
        return amount;
    }
}
