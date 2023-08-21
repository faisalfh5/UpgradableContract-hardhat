// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract UpgradableERC20Token {
    uint private totalSupply;

    // constructor(
    //     string memory _name,
    //     string memory _symbol,
    //     uint _totalSupply
    // ) ERC20(_name, _symbol) {
    //     totalSupply = _totalSupply;
    // }

    // function Mint() public {
    //         require(msg.value > mintPrice, "Incorrect Mint Price!");
    //         require(totalMinted < totalSupply, "Total supply end");
    //         uint tokenId = _tokenIdCounter;
    //         _tokenIdCounter++;
    //         _mint(msg.sender, tokenId);
    //     }
    function UpdateTotalSupply(uint _updateValue) public {
        totalSupply = _updateValue;
    }
}
