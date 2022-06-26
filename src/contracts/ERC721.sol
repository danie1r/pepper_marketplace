// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ERC721 {

    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    //mapping from token id to the owner
    mapping(uint256 => address) private _tokenOwner;

    //Mapping from oner to number of owned tokens
    mapping(address => uint) private _OwnedTokensCount;

    function _exists(uint256 tokenId) internal view returns(bool){
        //setting the address of nft owner to check the mapping
        //of the address from tokenOwner at the tokenId
        address owner = _tokenOwner[tokenId];
        //return truthiness 
        return owner != address(0);
    }

    function _mint(address to, uint256 tokenId) internal{
        //require that the address is not 0 address
        require(to != address(0), 'ERC721: Minting to the 0 address');
        //requires that the token does not already exist
        require(!_exists(tokenId), 'ERC721: Token already minted');
        //adding a new address with a token id for minting
        _tokenOwner[tokenId] = to;
        //keeping track of each address that is minting and adding one
        _OwnedTokensCount[to] += 1;
        
        emit Transfer(address(0), to, tokenId);
    }

}