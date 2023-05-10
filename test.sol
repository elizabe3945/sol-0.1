// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataStorage {
    mapping(address => string) private _data;

    function setData(string memory data) public {
        _data[msg.sender] = data;
    }

    function getData(address user) public view returns (string memory) {
        return _data[user];
    }
}
