pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
// Relational Operator:
contract RelationalOperator {
    uint16 public a = 70;
    uint16 public b = 10;
    bool public eq = a == b;
    bool public noteq = a != b;
    bool public gtr = a > b;
    bool public les = a < b;
    bool public gtreq = a >= b;
    bool public leseq = a <= b;
}