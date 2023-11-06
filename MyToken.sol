// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    string public tokenName = "MyToken";
    string public tokenSymbol = "MYT";
    uint256 public totalSupply = 0;

    mapping(address => uint256) public balances;


    function mint(address to, uint256 value) public {
        totalSupply += value;
        balances[to] += value;
    }

    function burn(address from, uint256 value) public {
        if(balances[from] >= value){
        totalSupply -= value;
        balances[from] -= value;
        }
    }
}
