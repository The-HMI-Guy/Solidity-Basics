// SPDX-License-Identifier: MIT
import "hardhat/console.sol";

pragma solidity ^0.8.0;

contract MyModifier {
    uint256 public myNum = 0;
    bool public paused = false;

    function addToNum() public {
        myNum++;
    }
}