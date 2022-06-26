// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './ERC721Connector.sol';

contract PepperMotors is ERC721Connector{

    //array to store our nfts
    string[] public peppersAsset;

    mapping(string => bool) _peppersAssetExists;

    function mint(string memory _pepper) public {

        require(!_peppersAssetExists[_pepper], 'Error: pepper already exists');

        // this is deprecated because .push no longer returns the length but ref to the added element
        // uint _id = PepperMotors.push(_pepper);

        peppersAsset.push(_pepper);
        uint _id = peppersAsset.length -1;

        _mint(msg.sender, _id);

        _peppersAssetExists[_pepper] = true;

    }

    constructor() ERC721Connector('PepperMotors', 'PRMT') 
    {}

}