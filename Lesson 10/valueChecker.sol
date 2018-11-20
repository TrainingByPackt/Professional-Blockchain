pragma solidity ^0.5.0;

contract valueChecker {

    uint8 public price = 10;

    event valueEvent(bool returnValue);

    function Matcher(uint8 x) public returns (bool) {
        if (x > =price) {
            emit valueEvent(true);
            return true;
        }
    }
}

contract valueChecker2 is valueChecker {

    function Matcher2() public view returns (uint) {
        return price + 10;
    }
}
