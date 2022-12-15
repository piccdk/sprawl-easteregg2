// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract EasterEggContest {
    string public constant easterEggLocation = "Discord";
    string public constant easterEggActor = "Easter Egg Bot";
    string public constant easterEggReward = "City Pass Whitelist spot";
    uint256 public constant easterEggWhitelistSpotMaxAllocation = 200;

    mapping(address => bool) public whitelist;
    uint256 public whitelistedCounter;

    mapping(address => bool) public mysteryRole;

    string[4] private constant Keys = ["*CENSORED*", "*CENSORED*", "*CENSORED*", "*CENSORED*"];

    bytes32 private constant MysteryKey = keccak256("sprawl");

    function message(address _discordUser, string calldata _discordInputData) public
    {
        if (StringUtils.equal(_discordInputData, "HINTS")) {
            revert("HINT: *CENSORED*");
        } else if (isMasterKey(_discordInputData)) {
            if (whitelistedCounter < easterEggWhitelistSpotMaxAllocation) {
                whitelist[_discordUser] = true;
                whitelistedCounter++;
            } else {
                revert("The whitelist maximum allocation has been reached");
            }
        } else if (keccak256(_discordInputData) == MysteryKey) {
            mysteryRole[_discordUser] = true;
        } else {
            revert("This is not the correct key.");
        }
    }

    function message(address discord_user, string calldata _discord_inputData) public
    {
        if (_inputData == "HINTS") {
            revert("HINT: *CENSORED*");
        } else if (_inputData == string.concat((Key1, Key2, Key3, Key4)) {
            if (whitelistedCounter < easterEggWhitelistSpotMaxAllocation) {
                whitelist[_user] = true;
                whitelistedCounter++;
            } else {
                revert("The whitelist maximum allocation has been reached");
            }
        } else if (_inputData == MysteryKey) {
            mysteryRole[_user] = true;
        } else {
            revert("This is not the correct key.");
        }
    }
   
}
