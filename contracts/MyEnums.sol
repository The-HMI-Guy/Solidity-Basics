// SPDX-License-Identifier: MIT
import "hardhat/console.sol";

pragma solidity ^0.8.0;

contract MyEnums {
    enum rarity {
        original,
        rare,
        super_rare
    }

    rarity public rarity_example;

    constructor() {
        rarity_example = rarity.rare;
    }

    function makeSuperRare() public {
        rarity_example = rarity.super_rare;
    }
}
