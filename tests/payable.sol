pragma solidity 0.8.6;

contract test {
	
		address Owner;
		uint public bal;
    
    constructor() public payable {
        Owner = msg.sender;
        bal = msg.value;
    }
    
    function withdraw() public {
        require(msg.sender == Owner);
        payable(msg.sender).transfer(address(this).balance);
    }
    
}