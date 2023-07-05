// RestrictedAccess:
pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT

contract AccessRestriction {
    address public owner = msg.sender;
    uint public lastOwnerChange = block.timestamp;

    modifier onlyBy(address _account) {
        require(msg.sender == _account, "Not authorized");
        _;
    }

    modifier onlyAfter(uint _time) {
        require(block.timestamp >= _time, "Not yet allowed");
        _;
    }

    modifier costs(uint _amount) {
        require(msg.value >= _amount, "Insufficient funds");
        _;
        if (msg.value > _amount) {
            payable(msg.sender).transfer(msg.value - _amount);
        }
    }

    function changeOwner(address _newOwner) public onlyBy(owner) {
        owner = _newOwner;
    }

    function buyContract() public payable onlyAfter(lastOwnerChange + 4 weeks) costs(1 ether) {
        owner = msg.sender;
        lastOwnerChange = block.timestamp;
    }
}
