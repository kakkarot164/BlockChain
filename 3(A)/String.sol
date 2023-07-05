pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
//String:
//Creating a contract
contract StringArray {
    string[] public row;

    function getRow() public view returns (string[] memory) {
        return row;
    }

    function pushToRow(string memory newValue) public {
        row.push(newValue);
    }
}
