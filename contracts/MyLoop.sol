// SPDX-License-Identifier: MIT
import "hardhat/console.sol";

pragma solidity ^0.8.0;

contract MyLoop {
    function myLoop() public pure {
        //pure not reference any local or global variables
        //identifier, condition, iterate
        for (uint256 i = 0; i < 5; i++) {
            if (i == 3) {
                break;
            }
            if (i == 2) {
                continue; //skips to the next iteration in the loop i.e. 2 => 3
            }
        }
        uint256 j = 0;
        while (j < 10) {
            //Do any actions
            j++;
        }
    }
}
