// SPDX-License-Identifier: MIT

// Delpoy a contract from a contract

import "./SimpleStorage.sol"; //here we're importaing the SimpleStorage contract

pragma solidity ^0.6.0;

contract StorageFactory{

    // creating an array to store the list of contract deployed
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public{

        // We're creating the instance of type SimpleStorage to access the SimpleStorage contract 
        SimpleStorage simpleStorage = new SimpleStorage();

        // Here we push the new instance of the array simpleStorageArray so we can read the contract created 
        simpleStorageArray.push(simpleStorage);
    }
}