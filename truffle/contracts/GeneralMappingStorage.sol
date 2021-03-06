pragma solidity ^0.4.18;

import './SafeMath.sol';

contract GeneralMappingStorage{
    using SafeMath for uint256;

    function GeneralMappingStorage(){

    }
    //bytes32 => address
    mapping(bytes32 => mapping(bytes32 => address)) bytes32ToAddress;

    function createBytes32ToAddress(bytes32 _schema, bytes32 _bytes32, address _address) public returns (bool){
        require(bytes32ToAddress[_schema][_bytes32]==address(0));
        bytes32ToAddress[_schema][_bytes32] = _address;
        return true;
    }

    function readBytes32ToAddress(bytes32 _schema, bytes32 _bytes32) public constant returns (address ){
        return bytes32ToAddress[_schema][_bytes32];
    }

    function updateBytes32ToAddress(bytes32 _schema, bytes32 _bytes32, address _address) public returns (bool){
        require(bytes32ToAddress[_schema][_bytes32]!=address(0));
        bytes32ToAddress[_schema][_bytes32] = _address;
        return true;
    }
    function setBytes32ToAddress(bytes32 _schema, bytes32 _bytes32, address _address) public returns (bool){
    //    require(bytes32ToAddress[_schema][_bytes32]!=address(0));
        bytes32ToAddress[_schema][_bytes32] = _address;
        return true;
    }

    function deleteBytes32ToAddress(bytes32 _schema, bytes32 _bytes32) public returns (bool){
        require(bytes32ToAddress[_schema][_bytes32]!=address(0));
        delete bytes32ToAddress[_schema][_bytes32];
        return true;
    }

    //address => uint256
    mapping(bytes32 => mapping(address => uint256)) addressToUint;

    function createAddressToUint(bytes32 _schema, address _address, uint256 _uint) public returns (bool){
        require(addressToUint[_schema][_address]==uint256(0));
        addressToUint[_schema][_address] = _uint;
        return true;
    }

    function readAddressToUint(bytes32 _schema, address _address) public constant returns (uint256 ){
        return addressToUint[_schema][_address];
    }

    function updateAddressToUint(bytes32 _schema, address _address, uint256 _uint) public returns (bool){
        require(addressToUint[_schema][_address]!=uint256(0));
        addressToUint[_schema][_address] = _uint;
        return true;
    }

    function setAddressToUint(bytes32 _schema, address _address, uint256 _uint) public returns (bool){
    //    require(addressToUint[_schema][_address]!=uint256(0));
        addressToUint[_schema][_address] = _uint;
        return true;
    }

    function deleteAddressToUint(bytes32 _schema, address _address) public returns (bool){
        require(addressToUint[_schema][_address]!=uint256(0));
        delete addressToUint[_schema][_address];
        return true;
    }


    //bytes32 => uint256
    mapping(bytes32 => mapping(bytes32 => uint256)) bytes32ToUint;

    function createBytes32ToUint(bytes32 _schema, bytes32 _bytes32, uint256 _uint) public returns (bool){
        require(bytes32ToUint[_schema][_bytes32]==uint256(0));
        bytes32ToUint[_schema][_bytes32] = _uint;
        return true;
    }

    function readBytes32ToUint(bytes32 _schema, bytes32 _bytes32) public constant returns (uint256 ){
        return bytes32ToUint[_schema][_bytes32];
    }

    function updateBytes32ToUint(bytes32 _schema, bytes32 _bytes32, uint256 _uint) public returns (bool){
        require(bytes32ToUint[_schema][_bytes32]!=uint256(0));
        bytes32ToUint[_schema][_bytes32] = _uint;
        return true;
    }

    function setBytes32ToUint(bytes32 _schema, bytes32 _bytes32, uint256 _uint) public returns (bool){
    //    require(bytes32ToUint[_schema][_address]!=uint256(0));
        bytes32ToUint[_schema][_bytes32] = _uint;
        return true;
    }

    function deleteBytes32ToUint(bytes32 _schema, bytes32 _bytes32) public returns (bool){
        require(bytes32ToUint[_schema][_bytes32]!=uint256(0));
        delete bytes32ToUint[_schema][_bytes32];
        return true;
    }

}