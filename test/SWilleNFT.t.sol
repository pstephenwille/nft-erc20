// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {SWilleNFT} from "../src/SWilleNFT.sol";
import {ParticularERC20} from "../src/ParticularERC20.sol";


contract SWilleNFTTest is Test {
    SWilleNFT public sut;

    event Transfer(address indexed from, address indexed to, uint256 value);

    function setUp() public {
        sut = new SWilleNFT();
    }

    function test_newContract() public {
        assertEq("wille", sut.name());
        assertEq(100, sut.balanceOf(sut.owner()));
    }

    function test_purchaseSwilleNftWithParticularErc20Token() public {
//        vm.expectEmit(true, true, false, true);
//        emit Transfer(particularToken.owner(), sut.owner(), 10);

//        sut.purchaseSwilleNftWithParticularNFT(particularToken.owner(), sut.owner(), 10);
    }

}
