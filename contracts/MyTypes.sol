// SPDX-License-Identifier: MIT

import "hardhat/console.sol";

pragma solidity ^0.8.0;

/// @title Contract was built following Hashlip's video series.
/// @author The HMI Guy.
/// @dev Please use Hashlips's video series.
contract MyTypes {

    //If a variable is not marked as public, you will not have access to the getter function. 
    //Getter function allows you to read the value from the contract.
    //By default if a variable is not marked, its' default state is private.
    //Marking a variable as internal, only the smart contract or inherit the contract will have access.
    //Organize variables by their datatype. More efficient.
    bool public myBoolean = false;

    uint256 public  myUint256 = 15464; //default uint = uint256
    uint32 public  myUint32 = 675656;
    uint16 public  myUint16 = 6773;
    uint8 public  myUint8 = 255; //0-255 | 2 ** 8 - 1 = 255

    int256 internal myInt256 = 15464; //default uint = uint256
    int32 myInt32 = 675656;
    int16 myInt16 = 6773;
    int8 myInt8 = -128; //0-255 | 2 ** 8 - 1 = 255

    address payable myAddress = payable(0x7B05E576A5aC57aBebc1D26F83954b2c522FAa3d); //type casting; helps the compiler
    address myContractAddress = address(this);

    uint256 balanceOfMyAddress = myAddress.balance;


}
