// SPDX-License-Identifier: MIT
import "hardhat/console.sol";

pragma solidity ^0.8.0;

contract MyInheritance_A {
    string internal name = "Hashlips";
}

contract MyInheritance_B is MyInheritance_A {
    function getName() public view virtual returns (string memory) {
        //virtual indicates this can be overwritten
        return name;
    }
}

contract MyInheritance_C is MyInheritance_B {
    function getName() public view virtual override returns (string memory) {
        //virtual indicates this can be overwritten
        return "Override!";
    }
}
