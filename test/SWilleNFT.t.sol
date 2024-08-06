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
        address pOwner = sut.particularToken().owner();
        address sutOwner = sut.owner();
        vm.expectEmit(true, true, false, true);
        emit Transfer(pOwner, sutOwner, 10);

        sut.purchaseSwilleNftWithParticularNFT(pOwner, sutOwner, 10);
        console.log('sut ', sut.balanceOf(sutOwner));
        console.log('test ', sut.balanceOf(pOwner));


        assertEq(100, sut.balanceOf(sut.owner()));
    }

}
