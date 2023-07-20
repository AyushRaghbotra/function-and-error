// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SmartContract {

     // Function to demonstrate the require statement
    function setNum(int num ) external pure returns (int) {
       
        require(num> 0, "VALUE SHOULD BE GRETAER THEN ZERO");

         int result = num * 5;
         return result;
    }

   // Function to demonstrate the assert statement
    function setValue(uint num ) external pure returns (uint) {
        uint value;
        assert(num!=0);

         value = 100/ num;
        
        return value ;

    }

    // Function to demonstrate the revert statement
    function setWithdraw(bool canWithdraw) external pure {   

        if (!canWithdraw) {
               revert("WITHRAW NOT ALLOWED AT THR MOMENT");
        }      
    }    
}
