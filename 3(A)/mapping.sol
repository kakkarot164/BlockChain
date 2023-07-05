pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
//Mapping:
contract Mapping {
    struct Student {
        string name;
        string subject;
        uint8 marks;
    }

    // Creating mapping
    mapping(address => Student) public result;
    address[] public student_result;

    // Function adding values to the mapping
    function adding_values() public {
        address studentAddress = address(0xDEE7796E89C36BAdd1375076f39D69FafE252);
        Student storage student = result[studentAddress];
        student.name = "John";
        student.subject = "Chemistry";
        student.marks = 88;
        student_result.push(studentAddress);
    }
}