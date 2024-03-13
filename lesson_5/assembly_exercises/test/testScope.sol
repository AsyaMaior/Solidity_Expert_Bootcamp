//SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {Test} from "forge-std/Test.sol";
import {Scope} from "../src/Scope.sol";

contract testScope is Test {
    Scope s_scope;

    function setUp() external {
        s_scope = new Scope();
    }

    function testIncrement() external {
        s_scope.increment(15);
        assertEq(s_scope.count(), 25);
    }
}

