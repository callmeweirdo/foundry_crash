// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test, console2, stdError} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test{
    Counter public counter;

    function setUp() public {
        counter = new Counter();
    } 

    function testInc() public {
        counter.inc();
        assertEq(counter.get(), 1);
    }

    function testFailDec() public {
        counter.dec();
    }

    function testDecUnderflow() public {
        vm.expectRevert(stdError.arithmeticError);
        counter.dec();
    }
}