pragma solidity ^0.4.17;

contract Adoption {
address[16] public adopters;
uint[15] public status;

// Adopting status
function adoptstatus(uint petId) public returns (uint){
	status[petId] = 1;
	return petId;
}

// Retrieving the adopters statueses
function getAdoptStatues() public view returns (uint[15]) {
  return status;
}

// Adopting a pet
function adopt(uint petId) public returns (uint) {
  require(petId >= 0 && petId <= 15);

  adopters[petId] = msg.sender;

  return petId;
}

// Retrieving the adopters
function getAdopters() public view returns (address[16]) {
  return adopters;
}

}