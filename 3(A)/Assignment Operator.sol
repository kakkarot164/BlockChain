pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
//Assignment Operator:
contract AssignmentOperator {
    // Declaring variables
    uint16 public assignment = 20;
    uint16 public assignmentAdd = 50;
    uint public assignSub = 50;
    uint public assignMul = 10;
    uint public assignDiv = 50;
    uint public assignMod = 32;
    
    function getResult() public {
        assignmentAdd += 10;
        assignSub -= 20;
        assignMul *= 10;
        assignDiv /= 10;
        assignMod %= 20;
    }
}