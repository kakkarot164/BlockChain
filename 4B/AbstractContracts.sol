pragma solidity ^0.5.0;
// SPDX-License-Identifier: MIT

contract abstractConstructor {
    function getResult() public view returns (uint);
}

contract Test is abstractConstructor {
    function getResult() public view returns (uint) {
        uint a = 10;
        uint b = 17;
        uint result = a + b;
        return result;
    }
}

