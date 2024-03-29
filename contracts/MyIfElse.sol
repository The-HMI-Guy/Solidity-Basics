// SPDX-License-Identifier: MIT
import "hardhat/console.sol";

pragma solidity ^0.8.0;

contract MyIfElse {
    uint256 public revealState = 0;
    bool public isNowRevealed = false;
    string public status = "Not yet revealed"; //strings cost a lot of gas. Be mindful!

    function addToRevealState() public {
        revealState++;
    }

    function isRevealed() public {
        if (revealState >= 5) {
            isNowRevealed = true;
            status = "Is now revealed!";
        } else if (revealState >= 3) {
            status = "Almost there!";
        } else {
            status = "Nope still not revealed";
        }
    }
}
