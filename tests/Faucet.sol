pragma solidity 0.8.4;

contract Faucet {
    address owner;
  
    constructor()  payable {
        owner = msg.sender;
           }
           
    function chkBalance() public view returns(uint) {
        return address(this).balance;
    }
           
    function sendEth() public {
        require(address(this).balance > 0.5 ether);
        payable(msg.sender).transfer(0.1 ether);
    }
    function clear() public {
        require(owner == msg.sender);
        selfdestruct(payable(owner));
    }

    function donate() payable public {
    }
   
}
