//SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {Test, console} from "forge-std/Test.sol";
// import {console} from "forge-std/console.sol";
import {Intro} from "../src/Intro.sol";

contract testIntro is Test {
    Intro s_intro;
    function setUp() external {
        s_intro = new Intro();
    }

    function testReturnValue() external view {
        uint16 result = s_intro.intro();
        console.log("result: %s", result);
        assertEq(result, 420);
    }
}