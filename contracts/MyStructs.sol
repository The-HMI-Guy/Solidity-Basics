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
        NFT memory newNFT;
        newNFT.name = _name;
        newNFT.dna = _dna;
        nftList.push();
    }

    function getNFTName(uint256 _index) public view returns (NFT memory) {
        return nftList[_index];
    }
}
