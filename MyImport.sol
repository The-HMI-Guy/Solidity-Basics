// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC721/ERC721.sol)

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFT {
    uint256 dna;
    string name;

    constructor(string memory _name, uint256 _dna) {
        name = _name;
        dna = _dna;
    }
}

contract MyImport is ERC721 {
    NFT[] public nfts;

    constructor(string memory name_, string memory symbol_)
        ERC721(name_, symbol_)
    {}

    function addNft(string memory _name, uint256 _dna) public {
        NFT nft = new NFT(_name, _dna);
        nfts.push(nft);
    }
}
