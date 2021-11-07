pragma solidity ^0.8.9;

contract HelloWorld {
	address owner;
	string greeting = "Hello World";

	// Constructor function
	constructor() {
		owner = msg.sender;
	}

	function greet() public view returns (string memory) {
		return greeting;
	}

	function kill() public {
		require(owner == msg.sender);
		selfdestruct(payable(owner));
	}
}
