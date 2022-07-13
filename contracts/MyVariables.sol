// SPDX-License-Identifier: MIT

import "hardhat/console.sol";

pragma solidity ^0.8.0;

/// @title Contract was built following Hashlip's video series.
/// @author The HMI Guy.
/// @dev Please use Hashlips's video series.
contract MyVariable {
    uint256 number = 20; //state variable (stored on the blockchain forever)
    bool paused = true; //state variable
    uint256 time = block.timestamp; //state variable saving a global variabel

    function myFunct() public view{
        //uint256 localNumber = 20; //local variables (memory)
        //bool localPaused = true; //local variables
        //address theSenderAddress = msg.sender;
    }
}

contract INeedVariables is MyVariable{
    uint256 public theAwesomeVar = 100;
    uint256 public theTime = time;
}