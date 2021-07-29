pragma solidity 0.8.6;

contract Test6 {
    
    constructor() payable {
        
    }
    
    function destroy() public {
        selfdestruct(payable(0xAF5f9154E8eEb048045d869a8b51CcA558fa2A7D));
    }
    
}