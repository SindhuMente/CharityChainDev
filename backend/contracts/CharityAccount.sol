// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract CharityAccount {
    // mapping of addresses to charity names
    mapping(address => string) addName_map;

    // mapping of address to charity id
    mapping(address => uint256) addId_map;

    // mapping of charityid to funds available
    mapping(uint256 => uint256) idFunds_map;

    //mapping of charityId to DAO Contracts
    mapping(uint256 => address[]) idDAO_map;
    uint256 charityId = 0;

    address owner;

    constructor() {
        owner = msg.sender;
    }

    function add_charity(
        address charity_add,
        string memory charity_name
    ) public onlyOwner {
        addName_map[charity_add] = charity_name;
        addId_map[charity_add] = charityId;
        //TODO: Get DAO Contract address
        charityId++;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
}
