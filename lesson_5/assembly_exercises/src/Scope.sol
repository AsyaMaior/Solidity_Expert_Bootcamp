//SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

contract Scope {
    uint256 public count = 10;

    function increment(uint256 num) public {
        // Modify state of the count variable from within
        // the assembly segment
        assembly {

        }
    }
}