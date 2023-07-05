pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
contract Assembly {
    function add(uint a) public view returns (uint) {
        uint result;

        assembly {
            let c := add(a, 16)
            mstore(0x80, c)
            {
                let d := add(sload(c), 12)
                // assign the value of 'd' to 'result'
                result := d
                // 'd' is deallocated now
            }
            result := add(result, c)
        }

        return result;
    }
}
