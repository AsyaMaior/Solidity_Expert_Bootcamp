//SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {Test} from "forge-std/Test.sol";
import {Add} from "../src/Add.sol";

contract testAdd is Test {
    Add s_add;

    function setUp() external {
        s_add = new Add();
    }

    function testAddAssembly() external view {
        uint256 result = s_add.addAssembly(4, 10);
        assertEq(result, 14);
    }
}