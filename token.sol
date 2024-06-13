// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract mytoken {

    // public variables here
     string public _name ="platinum";
     string public _Abbrev = "plt";
     uint public totalSupply = 0;

    // mapping variable here
       mapping(address => uint)public balances;
    // mint function
       function mintToken(address _addr,uint _value)public{
        totalSupply += 
        _value;
        balances[_addr] += _value;
       }

    // burn function
    function burnTokens(address _addr,uint _value)public{
        if(_value<=balances[_addr])
        totalSupply -= _value ;
        balances[_addr] -=_value;
    }

}
