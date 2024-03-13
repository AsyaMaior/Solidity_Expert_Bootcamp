//SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

contract SubOverflow {
    function subtract(uint256 x, uint256 y) public pure returns (uint256) {

        assembly {
            if lt(x, y) {
                return(0x60, 0xff)
            }
            let location := mload(0x40)
            mstore(location, sub(x, y))
            return(location, 0xff)
        }
    }
}