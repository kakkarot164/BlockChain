pragma solidity ^0.5.0;
// SPDX-License-Identifier: MIT
// Interfaces:

contract Interface {
    function getResult() public view returns (uint);
}

contract TestImplementation is Interface {
    function getResult() public view returns (uint) {
        uint a = 11;
        uint b = 67;
        uint result = a + b;
        return result;
    }
}