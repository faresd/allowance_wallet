pragma solidity ^0.8.4;

contract IOwner {
    
    address payable owner;
    
    constructor() {
        owner = payable(msg.sender);
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner is allowed to do this");
        _;
    }
}
