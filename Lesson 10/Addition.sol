pragma solidity ^0.4.25;

library Addition {
   function Add(uint x,uint y) internal pure returns (uint){ 
    return (x + y);
   }
}

/* import "Addition.sol";
contract myContract { 
  function getValue() public view returns (uint z) { 
    z = x + y; 
  }
 } */
