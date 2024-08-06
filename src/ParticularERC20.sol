// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {ERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import {Test, console} from "forge-std/Test.sol";

contract ParticularERC20 is ERC20 {
    address public immutable owner;

    constructor() ERC20("PARTICULARNFT", "pnft"){
        owner = msg.sender;
        _mint(owner, 100);
    }

    receive() external payable  {
        console.log('receive ', msg.value);
    }
}
