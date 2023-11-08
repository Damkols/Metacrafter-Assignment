# MyToken

This Solidity program is a simple token contract that demonstrates the basic syntax and functionality of the Solidity programming language.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract represents a token with a name, symbol, and total supply. It also includes two functions, mint and burn, which allow for the creation and destruction of tokens, respectively. The burn function has a condition to make sure the balance of the account is greater than or equal to the amount that is to be burned.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the [Remix website](https://remix.ethereum.org/).

1. Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:

```solidity
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
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the mint and burn functions. Click on the "MyToken" contract in the left-hand sidebar, and then click on the "mint" or "burn" function. Finally, click on the "transact" button to execute the function and modify the token's state.

Authors
@Damkols

License
This project is licensed under the MIT License - see the LICENSE.md file for details.
