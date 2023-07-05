pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
contract ForLoop {
    // Declaring a dynamic array
    uint[] data;
    
    // Declaring a function to demonstrate 'For loop'
    function loop() public returns (uint[] memory) {
        for (uint i = 0; i < 4; i++) {
            data.push(i);
        }
        return data;
    }
}