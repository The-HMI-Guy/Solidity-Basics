// SPDX-License-Identifier: MIT
import "hardhat/console.sol";

pragma solidity ^0.8.0;

contract MyModifier {
    uint256 public myNum = 0;
    bool public paused = false;
    address public owner;

    constructor() {
        owner = address(msg.sender);
    }

    modifier isNotPaused(bool _bypass) {
        if (_bypass == true) {
            require(paused == false, "Contract is paused");
            _;
        }
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    function setPaused() public {
        paused = true;
    }

    function addToNum() public isNotPaused(false) {
        //not a good practice of passing in the hard value. Best to haev variable.
        myNum++;
    }
}
