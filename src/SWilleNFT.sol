// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {ERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import {ParticularERC20} from "./ParticularERC20.sol";
import {Test, console} from "forge-std/Test.sol";

contract SWilleNFT is ERC20 {
    address owner;

    constructor() ERC20("swille", "WIL"){
        owner = msg.sender;
        _mint(msg.sender, 100);
    }

    function mint(address to, uint256 amount) public {
//        transfer to owner; mint new SWilleNFT
//    ParticularERC20(msg.sender).transfer(to, amount);
        _mint(to, amount);
    }
}
