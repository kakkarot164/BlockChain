pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
//Pure function:

contract PureFunction {
    function getResult() public pure returns (uint product, uint sum) {
        uint num1 = 2;
        uint num2 = 10;
        product = num1 * num2;
        sum = num1 + num2;
    }
}