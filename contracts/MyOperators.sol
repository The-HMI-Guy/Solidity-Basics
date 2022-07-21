// SPDX-License-Identifier: MIT

import "hardhat/console.sol";

pragma solidity ^0.8.0;

contract MyOperators {
    uint8 a = 1;
    uint8 b = 2;
    uint8 c = 3;
    uint8 newValue;

    /// @notice Arithemtic Operators (+, -, *, /, %, ++, --)
    function example_1() public view{
        a * b + c;
        c % b;
    }

    /// @notice Assignment Operators (=, +=, -+, *=, /+, %=)
    function example_2() public {
        newValue = a * b + c;
        a = a * b + c;
        b = b * c;
        b *= c; // same as the above statement
    }

    /// @notice Comparison Operators (==, !=, <, <=, >, >=)
    function example_3() public {

    }
    /// @notice Logical Operators (!, &&, !!)
    function example_4() public {

    }
    /// @notice Conditional Operators (? A:B)
    function example_5() public {

    }
}