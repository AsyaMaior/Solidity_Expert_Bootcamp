//SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

contract AmountETH {

    function getEthAmount() external payable returns(uint256 amount) {
        assembly {
            amount := callvalue()
        }
    }
}