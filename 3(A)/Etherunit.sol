pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
//etherunit shows different ether units available in Solidity
contract EtherUnit {
    function getEtherUnits() public pure returns (uint, uint, uint, uint, uint) {
        uint weiValue = 1;
        uint gweiValue = 1 * 1e9;
        uint szaboValue = 1 * 1e12;
        uint finneyValue = 1 * 1e15;
        uint etherValue = 1 * 1e18;
        return (weiValue, gweiValue, szaboValue, finneyValue, etherValue);
    }
}