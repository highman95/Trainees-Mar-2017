pragma solidity ^0.4.10;

contract RecruitSd {
    address _ownerRSD;
    uint private yearsOfExperience;
    bytes32 private choice;
    bytes32 private expectedRole;
    bytes32 private prefCodingLanguage;
    bytes32 private assetQuality;
    bytes32 private aboutSuperDao;

    function RecruitSd(bytes32 _expectedRole, uint _yearsOfExperience, bytes32 prefCodingLanguage, bytes32 _prefCodingLanguage, bytes32 _assetQuality, bytes32 _aboutSuperDao) {
        _ownerRSD = msg.sender;
        expectedRole = _expectedRole;
        yearsOfExperience = _yearsOfExperience;
        prefCodingLanguage = _prefCodingLanguage;
        assetQuality = _assetQuality;
        aboutSuperDao = _aboutSuperDao;
    }

    modifier onlyMe {
        if (msg.sender != _ownerRSD)
            throw;
        _;
    }
    
    function getExpectedRole() public returns (bytes32) {
        return expectedRole;
    }
    
    function setExpectedRole(bytes32 _expectedRole) onlyMe {
        expectedRole = _expectedRole;
    }
    
    function getYearsOfExperience() public returns (uint) {
        return yearsOfExperience;
    }
    
    function setYearsOfExperience(uint _yearsOfExperience) onlyMe {
        yearsOfExperience = _yearsOfExperience;
    }
    
    function getPrefCodingLanguage() public returns (bytes32) {
        return prefCodingLanguage;
    }
    
    function setPrefCodingLanguage(bytes32 _prefCodingLanguage) onlyMe {
        prefCodingLanguage = _prefCodingLanguage;
    }
    
    function getAssetQuality() public returns (bytes32) {
        return assetQuality;
    }
    
    function setAssetQuality(bytes32 _assetQuality) onlyMe {
        assetQuality = _assetQuality;
    }
    
    function getAboutSuperDao() public returns (bytes32) {
        return aboutSuperDao;
    }
    
    function setAboutSuperDao(bytes32 _aboutSuperDao) onlyMe {
        aboutSuperDao = _aboutSuperDao;
    }
}