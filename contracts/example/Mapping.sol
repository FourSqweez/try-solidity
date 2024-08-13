// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

contract Bank {

    // mapping (key => value) vairableName
    mapping (address => uint256) _balance;


    function deposit(uint256 amount) public  {
        _balance[msg.sender] += amount;
    }

    function withdraw(uint256 amount) public {
        _balance[msg.sender] -= amount;
    }

    function checkBalance() public view  returns(uint256 balance) {
        return _balance[msg.sender];
    }
}