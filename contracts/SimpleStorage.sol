// EVM, Ethereum Virtual Machine
// ethereum, Polygon, Arbitrum, Optimism, Zksync

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24; // this is the solidity version

contract SimpleStorage {
    uint256  myFavoriteNumber; // 0

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // dynamic array
    Person[] public listOfPeople; // []

    mapping(string => uint256) public nameToFavoriteNumber;


    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    } 

    // view, pure (keyword)
    function retrieve() public view returns(uint256){
        return  myFavoriteNumber;
    }

    // calldata, memory, stogage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;

    }
}