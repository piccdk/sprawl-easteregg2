// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract EasterEggContest {
    string public constant easterEggReward =  "City Pass Whitelist spot";
    uint256 public constant easterEggWhitelistSpotMaxAllocation = 200;

    mapping(address => bool) public whitelist;
    uint256 public whitelistedCounter;

    mapping(address => bool) public mysteryRole;

    string private constant MasterKey1 = *CENSORED*;
    string private constant MasterKey2 = *CENSORED*;
    string private constant MasterKey3 = *CENSORED*;
    string private constant MasterKey4 = *CENSORED*;

    string private constant MysteryKey = *CENSORED*;

    function message(address _user, string calldata _inputData) public
    {
        if (_inputData == "HINTS") {
            revert("HINT: *CENSORED*");
        } else if (_inputData == string.concat((MasterKey1, MasterKey2, MasterKey3, MasterKey4)) {
            if (whitelistedCounter < easterEggWhitelistSpotMaxAllocation) {
                whitelist[_user] = true;
                whitelistedCounter++;
            } else {
                revert("Max allocation reached");
            }
        } else if (_inputData == MysteryKey) {
            mysteryRole[_user] = true;
        } else {
            revert("Wrong key");
        }
    }
   
}
