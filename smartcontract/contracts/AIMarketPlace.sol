// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

import "../contracts/ZeroKnowledgeContract.sol";

contract AIMarketPlace is ZeroKnowledgeContract {

    string soldModel;
    string[] private soldModelMod;

    function getModels() public view returns (string memory) {
        return model;
    } 

    function buyModel(string memory _name) public returns(string memory){
        soldModel = _name;
        soldModelMod = getMods();
        return "Sold Successfully";
    }
   
}
