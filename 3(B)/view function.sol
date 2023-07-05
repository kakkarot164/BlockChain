pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
//View function:
contract ViewFunction {
    uint num1 = 2;
    uint num2 = 4;

    function getResult() public pure returns (uint product, uint sum) {
        uint localNum1 = 10;
        uint localNum2 = 16;
        product = localNum1 * localNum2;
        sum = localNum1 + localNum2;
    }
}