pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
contract CrytographicFunction{
    function callKeccak256() public pure returns(bytes32 result){
        return keccak256("ABC");
    }
}