pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
contract DoWhileLoop {
    // Declaring a dynamic array
    uint[] data;
    // Declaring state variable
    uint8 j = 0;

    // Defining function to demonstrate 'do-while loop'
    function loop() public returns (uint[] memory) {
        do {
            j++;
            data.push(j);
        } while (j < 8);
        return data;
    }
}

