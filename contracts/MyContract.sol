// SPDX-License-Identifier: MIT

import "hardhat/console.sol";

pragma solidity ^0.8.0;

// Normal single line comment
/// NatSpec single line comment

/*
Normal multi-line comment
*/

/**
NatSpec multi-line comment
*/


/// @title Contract was built following Hashlip's video series.
/// @author The HMI Guy.
/// @dev Please use Hashlips's video series.
contract MyContract {
    string public name = "TheHMIGuy";

    function updateName( string memory _newName) public {
        name = _newName;
    }
}
