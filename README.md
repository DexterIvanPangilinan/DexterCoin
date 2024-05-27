# ERC20
A standard for fungible tokens, or tokens with a feature that makes every token identical to every other token (in type and value), is introduced by the ERC-20. An ERC-20 token, for instance, functions similarly to an ETH token in that one token is equal to all other tokens and always will be.

# Getting Started
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., DexCoin.sol). Copy and paste the following code into the file:

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

    function transfer(address to, uint256 amount) public override returns (bool) {
        return super.transfer(to, amount);
    }

    function transferFrom(address from, address to, uint256 amount) public override returns (bool) {
        return super.transferFrom(from, to, amount);
    }
}
Select the "Solidity Compiler" tab from the sidebar on the left to begin compiling the code. Click the "Compile DexCoin.sol" button after ensuring that the "Compiler" option is set to "0.8.0" (or another suitable version).

After the code has been compiled, choose "DexCoin.sol" from the list of contracts under "Deploy and run transactions" and click the deploy button.

The name and symbol of your token must be entered before the contract can be deployed. You can now use the mint, burn, and transact functions after that. You will receive a copy of the account address for transacting.

# Author
Dexter Ivan A. Pangilinan 3.1 BSIT
