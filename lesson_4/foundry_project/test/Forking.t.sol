//SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import {Test} from "forge-std/Test.sol";


contract ForkTest is Test {
    // the identifiers of the forks
    uint256 mainnetFork;
    uint256 optimismFork;

    function setUp() public {
        string memory MAINNET_RPC_URL = vm.envString("MAINNET_RPC_URL");
        string memory OPTIMISM_RPC_URL = vm.envString("OPTIMISM_RPC_URL");
        mainnetFork = vm.createFork(MAINNET_RPC_URL);
        optimismFork = vm.createFork(OPTIMISM_RPC_URL);
    }

    // demonstrate fork ids are unique
    function testForkIdDiffer() public view{
        assert(mainnetFork != optimismFork);
    }

    // select a specific fork
    function testCanSelectFork() public {
        // select the fork
        vm.selectFork(mainnetFork);
        assertEq(vm.activeFork(), mainnetFork);
        // from here on data is fetched from the `mainnetFork` if the EVM requests it and written to the storage of `mainnetFork`
    }

    // manage multiple forks in the same test
    function testCanSwitchForks() public {
        vm.selectFork(mainnetFork);
        assertEq(vm.activeFork(), mainnetFork);
        vm.selectFork(optimismFork);
        assertEq(vm.activeFork(), optimismFork);
    }

    // forks can be created at all times
    function testCanCreateAndSelectForkInOneStep() public {
    // creates a new fork and also selects it
    string memory MAINNET_RPC_URL = vm.envString("MAINNET_RPC_URL");
    uint256 anotherFork = vm.createSelectFork(MAINNET_RPC_URL);
    assertEq(vm.activeFork(), anotherFork);
    }

    // set `block.timestamp` of a fork
    function testCanSetForkBlockTimestamp() public {
        vm.selectFork(mainnetFork);
        vm.rollFork(1_337_000);
        assertEq(block.number, 1_337_000);
    }
}