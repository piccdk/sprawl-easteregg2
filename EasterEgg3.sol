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

    function isMasterKey(string calldata _discordInputData) private view returns (bool) {
        bytes32 hashedDiscordInputData = keccak256(_discord_inputData);
        for (uint256 i1 = 0; i1 < 4; i1++)
            for (uint256 i2 = 0; i2 < 4; i2++)
                for (uint256 i3 = 0; i3 < 4; i3++)
                    for (uint256 i4 = 0; i4 < 4; i4++)
                        if (keccak256(_discord_inputData) == keccak256(string.concat(Key[i1], Key[i2], Key[i3], Key[i4])))
                            return true;
        return false;
    }

}
