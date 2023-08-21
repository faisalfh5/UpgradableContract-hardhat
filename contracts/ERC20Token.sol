// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract ERC20Token is ERC20 {
    uint public totalMinted;
    uint private totalSupply;
    uint mintPrice = 0.01 ether;
    uint _tokenIdCounter = 1;

    constructor(
        string memory _name,
        string memory _symbol,
        uint _totalSupply
    ) ERC20(_name, _symbol) {
        totalSupply = _totalSupply;
    }

    function Mint() public {
        require(msg.value > mintPrice, "Incorrect Mint Price!");
        require(totalMinted < totalSupply, "Total supply end");
        uint tokenId = _tokenIdCounter;
        _tokenIdCounter++;
        _mint(msg.sender, tokenId);
    }
}
