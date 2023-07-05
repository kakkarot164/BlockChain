pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
//conversion weitoether
contract Conversion {
    function weiToEther(uint weiAmount) public pure returns (uint) {
        return weiAmount / 1 ether;
    }
    
    function etherToWei(uint etherAmount) public pure returns (uint) {
        return etherAmount * 1 ether;
    }
}
