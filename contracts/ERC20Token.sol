// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract ERC20Token {
    uint public totalMinted;
    string private name;
    string private symbol;
    uint private tokenTotalSupply;
    uint mintPrice = 0.01 ether;
    uint _tokenIdCounter = 1;

    function initialize(
        string memory _name,
        string memory _symbol,
        uint _totalSupply
    ) public {
        name = _name;
        symbol = _symbol;
        tokenTotalSupply = _totalSupply;
    }

    function Mint() public payable {
        require(msg.value > mintPrice, "Incorrect Mint Price!");
        require(totalMinted < tokenTotalSupply, "Total supply end");
        // uint tokenId = _tokenIdCounter;
        _tokenIdCounter++;
        // _mint(msg.sender, tokenId);
    }
}
