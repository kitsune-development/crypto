pragma solidity ^0.4.0;

/*
Simple contract that returns a greeting
*/

contract HelloWorld {
	address creator;
	string greeting;
	
	function HelloWorld(string _greeting) public {
		greeting = _greeting;
		creator = msg.sender;
	}
	
	//Current Greeting on the Blockchain
	function greet() public constant returns (string) {
		return greeting;
	}
	
	//Update Greeting on the Blockchain
	function setGreeting(string _greeting)  public {
		greeting = _greeting;
	}
}