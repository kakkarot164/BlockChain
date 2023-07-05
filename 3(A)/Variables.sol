pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
//variable
contract Variable {
    uint storedData; // State variable
    
    constructor() {
        storedData = 40;
    }
    
    function getResult() public view returns(uint) {
        uint a = 1; // Local variable
        uint b = 5;
        uint result = a + b;
        require(result > 10, "Result must be greater than 10");
        return storedData; // Access the state variable
    }
}