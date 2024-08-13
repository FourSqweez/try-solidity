// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

contract Bank {
    // private by default
    uint256 _balance;

    function deposit(uint256 amount) public  {
        _balance += amount;
    }

    function withdraw(uint256 amount) public {
        require(amount <= _balance, "balance is not enough");
        _balance -= amount;
    }

    function checkBalance() public view  returns(uint256 balance) {
        return _balance;

        // return tuple
        // return (a, b);
    }
}