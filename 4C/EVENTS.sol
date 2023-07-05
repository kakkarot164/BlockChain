pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
// Creating a contract
contract Events {
    // Declaring state variables
    uint256 public value = 0;

    // Declaring an event
    event Increment(address owner);

    // Defining a function for logging event
    function getValue(uint _a, uint _b) public {
        emit Increment(msg.sender);
        value = _a + _b;
    }
}