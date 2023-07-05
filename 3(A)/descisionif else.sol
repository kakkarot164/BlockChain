pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
contract IfElseStatement {
    // Declaring state variables
    uint i = 20;
    bool even;
    
    // Defining function to demonstrate the use case of 'if...else statement'
    function decision_making() public payable returns (bool) {
        if (i % 2 == 0) {
            even = true;
        } else {
            even = false;
        }
        
        return even;
    }
}