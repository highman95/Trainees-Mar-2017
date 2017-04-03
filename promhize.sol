pragma solidity ^0.4.10;

contract application {


    function application () {
        owner = msg.sender;
        uint creationTime = now;
    }

    address owner;

    struct Details {
        bytes32 dappChoice;
        bytes32 role;
        uint experience;
        bytes32 languageOfExperience;
        bytes32 assetQuality;
        bytes32 whatIsSuperDAO;
    }

    mapping (uint => Details) list;
    Details d = list[0];

    function check () {
        if (msg.sender != owner) throw;
    }


    function setDetails (bytes32 dappChoice, bytes32 role, uint experience, bytes32 language, bytes32 assetQuality, bytes32 whatIsSuperDAO){
        check ();
        d.dappChoice = dappChoice;
        d.role = role;
        d.experience = experience;
        d.languageOfExperience = language;
        d.assetQuality = assetQuality;
        d.whatIsSuperDAO = whatIsSuperDAO;
    }

    function getDetails () constant returns (bytes32, bytes32, uint, bytes32, bytes32, bytes32) {
        return(
            d.dappChoice,
            d.role,
            d.experience,
            d.languageOfExperience,
            d.assetQuality,
            d.whatIsSuperDAO
            );
    }


}
