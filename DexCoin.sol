// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Coin is ERC20 {
    address public owner;

    constructor() ERC20("Coin", "Cn") {
        _mint(msg.sender, 100 * (1** uint256(decimals())));
        owner = msg.sender;
    }

    function mint(address to, uint256 amount) public {
        require(msg.sender == owner, "Only owner can mint tokens");
        _mint(to, amount); 
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function transfer(address to, uint256 amount)  public override returns (bool) {
        require(amount > 0, "Transfer amount should not be zero");
        return super.transfer(to, amount);
    }

    }