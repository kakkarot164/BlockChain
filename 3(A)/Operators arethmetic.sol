pragma solidity ^0.8.18;
//Operators :

//Arthmetic Operator:
// SPDX-License-Identifier: MIT

contract ArithmeticOperators {
    uint16 public a = 50;
    uint16 public b = 20;

    uint public sum = a + b;
    uint public diff = a - b;
    uint public mul = a * b;

    uint public div = a / b;
    uint public mod = a % b;
    uint public dec = --b;
    uint public inc = ++a;
}