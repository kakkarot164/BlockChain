pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
contract MathematicalFunction {
    function callAddMod() public pure returns (uint) {
        return addmod(14, 15, 13); // // addmod= (a+b)%c
    }

    function callMulMod() public pure returns (uint) {
        return mulmod(14, 15, 13);// // mulmod= (a*b)%
    }
}