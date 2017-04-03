pragma solidity ^0.4.10;

contract experience {
    
    address owner;
    
    struct information{
        bytes32 dappChoice;
        bytes32 expectedRole;
        uint yrsofExperience;
        bytes32 planguage;
        bytes32 assetQuality;
        bytes32 aboutSuperDAO; 
    }
    
    //events to monitor when data is set and infomation is requested
    event answerSet(bytes32 _dappChoice, bytes32 _expectedRole, uint _yrsofExperience, bytes32 _language, bytes32 _assetQuality, bytes32 _aboutSuperDAO);
    event experienceData(bytes32 _dappChoice, bytes32 _expectedRole, uint _yrsofExperience, bytes32 _language, bytes32 _assetQuality, bytes32 _aboutSuperDAO);
    
    information myInfo;
    
    function experience(){
        owner = msg.sender;
    }
    
    function getAnswers() public constant returns (bytes32,bytes32,uint,bytes32,bytes32,bytes32){
        experienceData(myInfo.dappChoice, myInfo.expectedRole, myInfo.yrsofExperience, myInfo.planguage, myInfo.assetQuality, myInfo.aboutSuperDAO);
        return(myInfo.dappChoice, myInfo.expectedRole, myInfo.yrsofExperience, myInfo.planguage, myInfo.assetQuality, myInfo.aboutSuperDAO );
    }
    
    function setAnswers(bytes32 dappChoice, bytes32 expectedRole, uint yrsofExperience, bytes32 language, bytes32 assetQuality, bytes32 aboutSuperDAO) returns (bool){
        if(msg.sender != owner ) {return;}
        
        myInfo.dappChoice = dappChoice;
        myInfo.expectedRole = expectedRole;
        myInfo.yrsofExperience = yrsofExperience;
        myInfo.planguage = language;
        myInfo.assetQuality = assetQuality;
        myInfo.aboutSuperDAO = aboutSuperDAO;
        
        answerSet(myInfo.dappChoice, myInfo.expectedRole, myInfo.yrsofExperience, myInfo.planguage, myInfo.assetQuality = assetQuality, myInfo.aboutSuperDAO = aboutSuperDAO);
        return true;
    }
    
}