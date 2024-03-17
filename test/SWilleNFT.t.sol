// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {SWilleNFT} from "../src/SWilleNFT.sol";

contract SWiilleNFTTest is Test {
    SWilleNFT public sut;

    function setUp() public {
        sut = new SWilleNFT();
    }

    function test_newContract() public {
        console.log('xx', sut.totalSupply());
        assertEq("swille", sut.name());
    }

    function test_mint() public {
        sut.mint(msg.sender, 10);
        assertEq(sut.totalSupply(), 110);
    }
}
