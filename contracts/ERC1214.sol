pragma solidity ^0.4.11;


import "./Storage.sol";
import "./DelegateProxy.sol";

/**
 * Based of the zeppelin token contract.
 */
contract ERC1214 is Storage, DelegateProxy {

  function name() public constant returns (string) {
    return "Upgradeable Token";
  }

  function symbol() public constant returns (string) {
    return "UPT";
  }

  // fallback function
  function () public payable {
    delegatedFwd(addresses['controller'], msg.data);
  }
}
