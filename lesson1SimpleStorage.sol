// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage{
    
    uint256 public favoriteNumber;

    struct People{
        string name;
        uint256 favoriteNumber;
    }
    mapping(string => uint256) public nameTofavoriteNumber;

    People[] public people;

    function  store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }
    
    function addPeople(string memory _name,uint256 _favoriteNumber ) public{
       people.push(People(_name,_favoriteNumber));
       nameTofavoriteNumber[_name] = _favoriteNumber;
    }
    }