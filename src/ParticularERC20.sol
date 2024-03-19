// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {ERC20} from "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract ParticularERC20 is ERC20 {
    address owner;
    constructor() ERC20("PARTICULARNFT", "pnft"){
        owner = msg.sender;
        _mint(msg.sender, 100);
    }


}
