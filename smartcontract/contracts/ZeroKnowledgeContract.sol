// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract ZeroKnowledgeContract {

    string private consensus_mod;
    string private consensus_mask;
    string private peer_mod;
    string private peer_mask;
    string public model;
    string[] private mods;
    event Success(string message);
    event Failure(string message);

    

    function verifyProofs(string memory n1,  string memory n2, string memory n3, string memory n4, string memory model_name, 
        string[] memory _mods) public {
        
        if ((keccak256(abi.encodePacked(n1)) == keccak256(abi.encodePacked(n3))) && (keccak256(abi.encodePacked(n2)) == keccak256(abi.encodePacked(n4)))) {
            consensus_mod = n1;
            consensus_mask = n2;
            peer_mod  = n3;
            peer_mask = n4;
            model = model_name;
            for (uint256 i = 0; i < _mods.length; i++) {
                mods.push(_mods[i]);
            }
            emit Success("Proofs verified. Transaction successful.");
        } else {
            emit Failure("Proofs are invalid. Transaction reverted.");
            revert("Proofs invalid");
        }
    }

    function getModelName() public view returns(string memory){
        return model;
    }
    function getMods() internal view returns (string[] memory) {
        return mods;
    }
}
