pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
// whileLoop:

contract WhileLoop {
    // Declaring a dynamic array
    uint[] data;
    // Declaring state variable
    uint8 j = 0;
    
    function loop() public returns (uint[] memory) {
        while (j < 16) {
            j++;
            data.push(j);
        }
        return data;
    }
}