pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
//Bitwise Operator:
contract BitwiseOperator {
    // Declaring variables
    uint16 public a = 20;
    uint16 public b = 50;
    uint16 public bitwiseAnd = a & b;
    uint16 public bitwiseOr = a | b;
    uint16 public bitwiseXor = a ^ b;
    uint16 public leftShift = a << b;
    uint16 public rightShift = a >> b;
    uint16 public bitwiseNot = ~a;
}