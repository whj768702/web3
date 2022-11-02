pragma solidity ^0.4.0;

contract SimpleStorage {
    uint256 storeData = 0;

    function set(uint256 x) public {
        storeData = x;
    }

    function get() public view returns (uint256) {
        return storeData;
    }
}
