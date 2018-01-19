pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract GruToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function GruToken(address _owner)  UpgradeableToken(_owner) {
    name = "GruToken";
    symbol = "GRU";
    totalSupply = 100000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}