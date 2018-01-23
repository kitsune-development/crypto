pragma solidity ^0.4.0;

contract KitsuneCoin {
	address public creator;
	mapping (address => uint) public balances;
	
	//notification that transfer is complete
	event Delivered(address from, address to, uint amount);
	
	function KitsuneCoin() public {
		creator = msg.sender;
	}
	
	function createCoin(address receiver, uint amount) public {
		require(msg.sender == creator);
		balances[receiver] += amount;
	}
	
	function transfer(address receiver, uint amount) public {
		require(balances[msg.sender] > amount);
		balances[msg.sender] -= amount;
		balances[receiver] += amount;
		Delivered(msg.sender, receiver, amount);
	}
}