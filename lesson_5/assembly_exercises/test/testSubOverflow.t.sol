//SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {Test} from "forge-std/Test.sol";
import {SubOverflow} from "../src/SubOverflow.sol";

contract testSubOverflow is Test {
    SubOverflow s_subOverflow;

    function setUp() external {
        s_subOverflow = new SubOverflow();
    }

    function testSubtractZero() external view {
        uint256 result = s_subOverflow.subtract(5, 10);
        assertEq(result, 0);
    }

    function testSubstractNonZero() external view {
        uint256 result = s_subOverflow.subtract(25, 10);
        assertEq(result, 15);
    }
}