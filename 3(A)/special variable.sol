pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
//Special Variable:

contract SpecialVariable {
    // Creating a mapping
    mapping(address => uint) rollNo;

    function setRollNo(uint _myNumber) public {
        rollNo[msg.sender] = _myNumber;
    }

    // Defining a function to return the roll number
    function whatIsMyRollNumber() public view returns (uint) {
        return rollNo[msg.sender];
    }
}
