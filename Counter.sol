pragma solidity ^0.6.0;

contract Counter {
    // 1, 2 ,3...
    uint count;
    
    constructor() public {
        count = 0;
    }
    
    function getCount() public view returns(uint) {
        return count;
    }
    function incrementCount() public {
        count = count + 1;
        
    }
}
