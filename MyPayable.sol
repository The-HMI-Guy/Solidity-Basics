// SPDX-License-Identifier: MIT
import "hardhat/console.sol";

pragma solidity ^0.8.0;

contract MyPayable {
    address payable public myAddress;

    constructor() {
        myAddress = payable(msg.sender);
    }

    function deposit() public payable {}

    function getThisContractBalance() public view returns (uint256) {
        uint256 amount = address(this).balance;
        return amount;
    }

    //Three different options for sending Eth. Call is the preferred method.
    function transferEth(address payable _user) public payable {
        _user.transfer(msg.value);
    }

    function sendEth(address payable _user) public payable {
        bool didSend = _user.send(msg.value);
        require(didSend, "This failed to send");
    }

    function callEth(address payable _user) public payable {
        (bool didSend, bytes memory data) = _user.call{value: msg.value}("");
        require(didSend, "This transaction failed");
    }

    receive() external payable {}

    fallback() external payable {}
}
