// SPDX-License-Identifier: MIT

// Delpoy a contract from a contract

import "./SimpleStorage.sol"; //here we're importaing the SimpleStorage contract

pragma solidity ^0.6.0;

// is SimpleStorage = inherit the contract SimpleStorage with all its functions
contract StorageFactory is SimpleStorage{

    // creating an array to store the list of contract deployed
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public{

        // We're creating the instance of type SimpleStorage to access the SimpleStorage contract,
        //Brief: were creatating an new contract 
        SimpleStorage simpleStorage = new SimpleStorage();

        // Here we push the new instance of the array simpleStorageArray so we can read the contract created 
        //Brief: we're adding contract to the simpleStorageArray
        simpleStorageArray.push(simpleStorage);

        // HERE WE INTERACT WITH A DEPLOYED CONTRACT FROM A CONTRACT
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
        // Address
        // ABI
       SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
       simpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex)public view returns(uint256){
        // Address
        // ABI
        return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve();
    }
    }
}