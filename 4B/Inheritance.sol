pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
//Inheritance
contract C {
    uint private data;
    uint public info;

    constructor() {
        info = 20;
    }

    function increment(uint a) private pure returns (uint) {
        return a + 1;
    }

    function updateData(uint a) public {
        data = a;
    }

    function getData() internal virtual view returns (uint) {
        return data;
    }

    function compute(uint a, uint b) internal pure returns (uint) {
        return a + b;
    }

    function getComputedResult(uint a, uint b) public pure returns (uint) {
        return compute(a, b);
    }
}

abstract contract E is C {
    uint private result;
    C private c;

    constructor() {
        c = new C();
    }

    function getComputedResult() public {
        result = c.getComputedResult(3, 5);
    }

    function getResult() public view returns (uint) {
        return result;
    }

    function getData() internal view override returns (uint) {
        return c.info();
    }
}
