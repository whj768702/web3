pragma solidity ^0.4.0;

contract SimpleStorage {
    uint256 storeData = 0;

    function set(uint256 x) publish {
        storeData = x;
    }

    function get() view publish returns (uint256) {
        return storeData;
    }
}
