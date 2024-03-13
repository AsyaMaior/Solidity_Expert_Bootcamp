//SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

contract Scope {
    uint256 public count = 10;

    function increment(uint256 num) public {

        assembly {
            let _count := sload(0)
            let new_count := add(_count, num)
            sstore(0, new_count)
        }
    }
}