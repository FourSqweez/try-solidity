// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

// import {SimpleStorage, SimpleStorage2} from "./SimpleStorage.sol";
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

    // uint256 public favoriteNumber
    // type visibility name
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        // deploy another contract
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    // storageFactory store
    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public  {
        // Address
        // ABI - Application Binary interface
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public  view  returns(uint256){
        return  listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}