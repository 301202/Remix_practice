// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract GhanaCommunicationTechnologyUniversity is ERC20{
    constructor(uint256 initialSupply)
        ERC20("Ghana Communication Technology University", "GCTU"){
        _mint(msg.sender, initialSupply);        
    }
}