// SPDX-License-Identifier: MIT
import "hardhat/console.sol";

pragma solidity ^0.8.0;

contract MyArray {
    uint256[] public arr_1;
    uint256[] public arr_2 = [3,2,5];
    uint256[5] public arr_3;

    //arr_2.push(9); 9 will be appended to the end of the array
    //arr_2.pop(); Will remove last index
    //delete arr_2[0] Will delete index 0

    function getValueOfIndex (uint256 _index) public view returns (uint256){
        return arr_2[_index];
    }
    function addToArray (uint256 _value) public {
        arr_2.push(_value);
    }

}
