pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
//Logical Operator:

contract LogicalOperator {
    function Logic(bool a, bool b) public pure returns (bool, bool, bool) {
        // Logical AND operator
        bool andResult = a && b;
        // Logical OR operator
        bool orResult = a || b;
        // Logical NOT operator
        bool notResult = !a;
        return (andResult, orResult, notResult);
    }
}
