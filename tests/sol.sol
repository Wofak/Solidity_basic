pragma solidity 0.6.0;

contract Test15 {
    mapping(address => uint) balances;
    
    constructor(uint _initialSupply) public {
        balances[msg.sender] = _initialSupply;
    }
    
    function balanceOf(address _owner) public view returns (uint){
        return balances[_owner];
    }
    
    function transfer(address _to, uint _value) public returns (bool) {
        require(balances[msg.sender] - _value >= 0);
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        return true;
    }
    
}