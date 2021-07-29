pragma solidity 0.8.6;

contract Test2 {
    
    address owner;
    
    constructor() payable {
      owner = msg.sender;   
    }
    
    function changeOwner() public {
        owner = msg.sender;
    }
    
    function withdraw() public {
        payable(owner).transfer(0.001 ether);
    }
    
}