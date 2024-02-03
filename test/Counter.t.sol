// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test{
    Counter counter;
    function setup() public {
        counter  = new Counter();
    }

    function testInc() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }
}