pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT

contract C {
    uint private data;
    uint public info;

    constructor() {
        info = 10;
    }

    function increment(uint a) private pure returns (uint) {
        return a + 1;
    }

    function updateData(uint a) public {
        data = a;
    }

    function getData() public view virtual returns (uint) {
        return data;
    }

    function compute(uint a, uint b) internal pure returns (uint) {
        return a + b;
    }
}

contract D {
    function readData() public returns (uint) {
        C c = new C();
        c.updateData(7);
        return c.getData();
    }
}

contract E is C {
    uint private result;
    C private c;

    constructor() {
        c = new C();
    }

    function getComputedResult() public {
        result = compute(3, 5);
    }

    function getResult() public view returns (uint) {
        return result;
    }

    function getData() public view override returns (uint) {
        return c.info();
    }
}
