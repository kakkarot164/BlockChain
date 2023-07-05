pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
contract Enums {
    enum FreshJuiceSize { SMALL, MEDIUM, LARGE }
    FreshJuiceSize public choice;
    FreshJuiceSize constant defaultChoice = FreshJuiceSize.MEDIUM;

    function setLarge() public {
        choice = FreshJuiceSize.LARGE;
    }

    function getChoice() public view returns (FreshJuiceSize) {
        return choice;
    }

    function getDefaultChoice() public pure returns (uint) {
        return uint(defaultChoice);
    }
}