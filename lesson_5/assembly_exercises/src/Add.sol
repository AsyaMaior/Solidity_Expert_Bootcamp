//SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

contract Add {
    function addAssembly(uint256 x, uint256 y) public pure returns (uint256) {

        assembly {
            let result := add(x, y)
            mstore(mload(0x40), result)
        }

        assembly {
            return(mload(0x40), 0xff)
        }
    }
}