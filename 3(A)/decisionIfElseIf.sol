pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
//If…else if…else statement:
contract IfElseIfStatement {
    // Declaring state variables
    uint i = 9;
    string result;
    
    function decision_making() public returns (string memory) {
        if (i < 10) {
            result = "less than 10";
        } else if (i == 10) {
            result = "equal to 10";
        } else {
            result = "greater than 10";
        }
        
        return result;
    }
}