pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
// Creating a contract
contract constructorExample {
    // Declaring state variable.
    string str;
    
    // Creating a constructor to set the value of 'str'
    constructor() public {
        str = "This is an example of a constructor";
    }
    
    function getValue() public view returns (string memory) {
        return str;
    }
}