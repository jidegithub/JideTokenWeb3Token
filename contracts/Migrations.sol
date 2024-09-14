// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Migrations {
  address public owner;
  uint public last_completed_migration;

  modifier onlyOwner() {
    // if (msg.sender == owner) _;
    require(msg.sender == owner, "Only the owner can perform task");
		_;
  }

  constructor() {
    owner = msg.sender;
  }

  function setCompleted(uint completed) public onlyOwner {
    last_completed_migration = completed;
  }

  function upgrade(address new_address) public onlyOwner {
    Migrations upgraded = Migrations(new_address);
    upgraded.setCompleted(last_completed_migration);
  }
}