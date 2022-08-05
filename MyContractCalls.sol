// SPDX-License-Identifier: MIT
import "hardhat/console.sol";

pragma solidity ^0.8.0;

contract MyContract {
    uint256 public age = 29;

    function getAge() public view returns (uint256) {
        return age;
    }
}

contract MyContractCalls {
    function getAgeFromOtherContract(address _contractAdress) public view returns(uint256) {
        MyContract other = MyContract(_contractAdress);
        uint256 age = other.getAge();
        return age;
    }
}
