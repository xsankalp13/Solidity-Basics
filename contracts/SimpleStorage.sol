//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18; //this is the solidty version

contract SimpleStorage{
    //Basic Types: boolean, uint, int, adress, bytes
    uint256  myFavoriteNumber; //0

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // Person public myFriend = Person({
    //     favoriteNumber:1,
    //     name:"pat"
    // });

    //dynamic array
    Person[] public myFriends; // []


    //Static array
    // Person[4] public myFriends; // []
    
    mapping(string => uint256) public nameToFavoriteNumber;

    function stroe(uint256 _favoriteNumber) public virtual    {
        myFavoriteNumber = _favoriteNumber;
    }

    function getter() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string calldata _name, uint256 _number) public{
        myFriends.push(Person({
            favoriteNumber:_number,
            name:_name
        }));
        nameToFavoriteNumber[_name] = _number;
    }

}