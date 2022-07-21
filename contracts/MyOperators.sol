// SPDX-License-Identifier: MIT

import "hardhat/console.sol";

pragma solidity ^0.8.0;

contract MyOperators {
    uint8 a = 1;
    uint8 b = 2;
    uint8 c = 3;
    uint8 newValue;
    bool myBool = false;

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

    /// @notice Comparison Operators (==, !=, <, <=, >, >=) => view function because we are not changing the state variables
    function example_3() public view{
        bool result = false; // local variable
        if(a < b){
            result = true;
        }
        if (a <= b){
            result = true;
        }
        if (a == b){
            result = true;
        }
        if (a != b){
            result = true;
        }
        if(result == myBool){
            result = true;
        }

    }
    /// @notice Logical Operators (!, &&, !!)
    function example_4() public view{
        bool result = false; // local variable
        if(a < b && b > c){
            result = true;
        }
        if(a < b || b > c){
            result = true;
        }
        if(a < b && b > c && a > 20){
            result = true;
        }
        if(!myBool){ 
            result = true;
        }
        result = !result;
    }
    /// @notice Conditional Operators (? A:B)
    function example_5() public view{
        uint8 result;
        result  = a < b ? 100 : 50; //If a < b result = 100. If false, result = 50

    }
}