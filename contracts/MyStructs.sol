// SPDX-License-Identifier: MIT

import "hardhat/console.sol";

pragma solidity ^0.8.0;

contract MyStructs {
    struct NFT {
        string name;
        uint256 dna;
    }
    NFT[] public nftList;

    function addNFT(string memory _name, uint256 _dna) public {
        NFT memory newNFT = NFT(_name, _dna);
        nftList.push(newNFT);
    }

    function updateNFT(uint256 _idex, string memory _name) public {
        NFT storage nftToBeUpdated = nftList[_idex];
        nftToBeUpdated.name = _name;
    }

    function getNFTName(uint256 _index) public view returns (string memory) {
        return nftList[_index].name;
    }
}
