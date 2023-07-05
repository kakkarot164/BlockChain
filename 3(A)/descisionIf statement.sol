pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
contract IfStatement {
    // Declaring state variable
    uint i = 20;
    
    function decision_making() public view returns (bool) {
        if (i < 20) {
            return true;
        }
        
        return false;
    }
}