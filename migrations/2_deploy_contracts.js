const JIDEToken = artifacts.require("JIDEToken");

module.exports = function(deployer) {
  // Adjust supply as needed
  const initialSupply = web3.utils.toWei('1000', 'ether'); 
  // Deploy the JIDEToken contract as our only task
  deployer.deploy(JIDEToken, initialSupply);
};