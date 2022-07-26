// SPDX-License-Identifier: MIT

import "hardhat/console.sol";

pragma solidity ^0.8.0;

contract MyUnits {
    // assert (1 wei == 1);
    // assert (1 wgei == 1e9);
    // assert (1 ether == 1e18);
    uint256 costOfNFT = 0.5 ether;

    // 1 == 1 seconds;
    // 1 minutes == 60 seconds;
    // 1 hours == 60 minutes;
    // 1 days == 24 hours;
    // 1 weeks == 7 days;

    uint256 levelUpRate = 1 hours;
}
