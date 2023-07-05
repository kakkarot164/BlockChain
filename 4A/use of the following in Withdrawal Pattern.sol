pragma solidity ^0.8.18;
// SPDX-License-Identifier: UNLICENSED


// WithdrawalPattern:
contract WithdrawalContract {
    address public richest;
    uint public mostSent;
    mapping(address => uint) public pendingWithdrawals;

    error NotEnoughEther();

    constructor() payable {
        richest = msg.sender;
        mostSent = msg.value;
    }

    function becomeRichest() public payable {
        if (msg.value <= mostSent) {
            revert NotEnoughEther();
        }
        pendingWithdrawals[richest] += msg.value;
        richest = msg.sender;
        mostSent = msg.value;
    }

    function withdraw() public {
        uint amount = pendingWithdrawals[msg.sender];
        pendingWithdrawals[msg.sender] = 0;
        payable(msg.sender).transfer(amount);
    }
}


