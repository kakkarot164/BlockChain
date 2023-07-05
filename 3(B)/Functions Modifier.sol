pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
// Functions Modifiers:
contract Owner {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    modifier costs(uint256 price) {
        require(msg.value >= price, "Insufficient value sent");
        _;
    }
}

contract Register is Owner {
    mapping(address => bool) registeredAddresses;
    uint256 price;

    constructor(uint256 initialPrice) {
        price = initialPrice;
    }

    function register() public payable costs(price) {
        registeredAddresses[msg.sender] = true;
    }

    function changePrice(uint256 _price) public onlyOwner {
        price = _price;
    }
}