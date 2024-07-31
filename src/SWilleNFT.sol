// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {ERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import {ParticularERC20} from "./ParticularERC20.sol";
import {Test, console} from "forge-std/Test.sol";

contract SWilleNFT is ERC20 {
    address public immutable owner;
    ParticularERC20 public particularToken;

    constructor() ERC20("wille", "swille"){
        owner = msg.sender;
        _mint(msg.sender, 100);
        particularToken = new ParticularERC20();

        console.log('addresses ', owner,particularToken.owner());
        console.log('part', balanceOf(particularToken.owner()));
    }

    function purchaseSwilleNftWithParticularNFT(address from, address to, uint256 amount) public {
        particularToken.approve(particularToken.owner(), amount);
//        particularToken.transferFrom(particularToken.owner(), owner, amount);
        particularToken.transfer(owner, amount);

    }

    function getParticularToken() public view returns (ParticularERC20){
        return particularToken;
    }
}
