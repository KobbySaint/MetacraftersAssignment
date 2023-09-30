// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Saintcr {

    string public tokenName ="Saintcr";
    string public tokenAbbrv = "SC";

    uint public totalsupply;
    mapping (address=>uint)public balances;

    function mint (address user,uint amount) public {
        totalsupply += amount;
        balances[user] += amount;
    }


    function burn(address user, uint amount) public {
        require(balances[user] >= amount,"you dont have enough Saintcr");
        totalsupply -= amount;
        balances[user] -= amount;


    }
}
