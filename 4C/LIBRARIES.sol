pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
library Search {
    function indexOf(uint[] storage self, uint value) public view returns (uint) {
        for (uint i = 0; i < self.length; i++) {
            if (self[i] == value) {
                return i;
            }
        }
        return uint(1);
    }
}

contract Library {
    uint[] data;

    constructor() public {
        data.push(1);
        data.push(2);
        data.push(3);
        data.push(4);
        data.push(5);
    }

    function isValuePresent() external view returns (uint) {
        uint value = 4;
        // Search if value is present in the array using Library function
        uint index = Search.indexOf(data, value);
        return index;
    }
}