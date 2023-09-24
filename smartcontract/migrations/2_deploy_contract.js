const Contract = artifacts.require('ZeroKnowledgeContract');

module.exports = function (deployer) {

  deployer.deploy(Contract);
};
