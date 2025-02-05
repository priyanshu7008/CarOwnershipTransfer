// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CarOwnership {
    struct Car {
        string vin; // Vehicle Identification Number
        address owner; // Address of the car owner
    }

    mapping(string => Car) public cars;

    function registerCar(string memory _vin) public {
        cars[_vin] = Car(_vin, msg.sender);
    }

    function transferOwnership(string memory _vin, address _newOwner) public {
        require(msg.sender == cars[_vin].owner, "Only the owner can transfer ownership");
        cars[_vin].owner = _newOwner;
    }

    function getOwner(string memory _vin) public view returns (address) {
        return cars[_vin].owner;
    }
}