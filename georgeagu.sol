pragma solidity ^0.4.0;
contract george {
    struct Myid {
        string myname;
        bytes32 Dappchoice;
        bytes32 organrole;
        uint yearofexperience;
        bytes32 qualityasset;
        bytes32 proglang;
        bytes32 SuperDAOmeans;
    
    }
     Myid[] public Inductee;
     
     function thisispoker(){
        
    }

    function ID() returns (string myname){
        myname = "agu george";
    }
    function Appchoice() returns(bytes32 Dappchoice){
        Dappchoice = "pokereum";
    }
    function Role() returns(bytes32 organrole){
        organrole = "Programmer";
        }
        
    function Workyrs() returns(uint){
       uint yearofexperience = 7;
       return yearofexperience;
    }
    
    function Asset() returns(bytes32){
        bytes32 qualityasset = " iam a visionary thinker";
        return qualityasset;
        }
        
    function content() returns(bytes32) {
        bytes32 proglang = "solidity";
        return proglang;
        }
        
      function whatsuperDAO() returns(bytes32){ 
        bytes32 SuperDAOmeans = "Superdao is a dcentralized org.";
        return SuperDAOmeans;
        }  
        
        
        
        
        
        
        
    
        
        
        
        
}
