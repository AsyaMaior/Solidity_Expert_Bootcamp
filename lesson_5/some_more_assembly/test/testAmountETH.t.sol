//SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {Test} from "forge-std/Test.sol";
import {AmountETH} from "../src/AmountETH.sol";

contract testAmountETH is Test {
    AmountETH s_aETH;

    function setUp() external {
        s_aETH = new AmountETH();
    }

    function testGetEthAmount() external {
        (bool success, bytes memory amount) = address(s_aETH).call{value: 1e18}(abi.encodeWithSignature("getEthAmount()"));
        require(success);
        uint256 return_amount = abi.decode(amount, (uint256));
        assertEq(return_amount, 1e18);
    }
}

