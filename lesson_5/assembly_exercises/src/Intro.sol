//SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

contract Intro {
    function intro() public pure returns (uint16) {

        assembly {
            let mol := 420
            mstore(0x80, mol)
            return(0x80, 0xff)
        }
    }
}