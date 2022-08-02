// SPDX-License-Identifier: MIT
import "hardhat/console.sol";

pragma solidity ^0.8.0;

contract MyFunctions {
    uint256 myUint = 42;
    string myString = "Daniel";
    bool myBool = true;
    uint256[] myArr = [3, 3, 3];

    function myPureFunc(uint256 _x, uint256 _y)
        public
        pure
        returns (uint256 result)
    {
        return _x + _y;
    }

    function myViewFunc() public view returns (string memory) {
        return myString;
    }

    function myUpdateFunc() public returns (string memory) {
        myString = "Hellow Wrold";
        return myString;
    }
}
