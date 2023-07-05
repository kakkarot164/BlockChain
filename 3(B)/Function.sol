pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
// Function:
contract Function {
    function getResult() public pure returns (uint product, uint sum) {
        uint a = 11; // local variable
        uint b = 20;
        product = a * b;
        sum = a + b;
    }
}