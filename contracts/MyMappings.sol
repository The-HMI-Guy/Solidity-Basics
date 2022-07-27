// SPDX-License-Identifier: MIT
import "hardhat/console.sol";

pragma solidity ^0.8.0;

contract MyMappings {
    mapping(uint256 => address) private nfts; //mapping signature takes key value pair. Set to private to avoid default getter. Function below used for owner.
    uint256 counter = 0;

    function getOwnerOfNFT(uint256 _id) public view returns (address){
        return nfts[_id];
    }

    function mint(address _address)public {
        nfts[counter] = _address;
        counter++;
    }
}
