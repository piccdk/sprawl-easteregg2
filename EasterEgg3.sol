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

    string private constant Key1 = *CENSORED*;
    string private constant Key2 = *CENSORED*;
    string private constant Key3 = *CENSORED*;
    string private constant Key4 = *CENSORED*;

    string private constant MysteryKey = string(abi.encode(keccak256("sprawl")));

    function message(address discord_user, string calldata _discord_inputData) public
    {
        if (_inputData == "I need hints") {
            revert("*CENSORED*");
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

    ## Good luck

}
