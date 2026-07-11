// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract OpenFeedToken {
    string public name = "OpenFeed Token";
    string public symbol = "FEED";
    uint8 public decimals = 18;
    uint256 public totalSupply = 1000000000 * 10**uint256(decimals); // 1 Billion Tokens

    mapping(address => uint256) public balanceOf;
    
    address public founderAddress;
    address public rewardPoolAddress;

    constructor(address _founder) {
        founderAddress = _founder;
        
        // 15% Founder Allocation (Account #1)
        balanceOf[founderAddress] = (totalSupply * 15) / 100;
        
        // 85% Remaining for Reward Pool and Ecosystem
        rewardPoolAddress = address(this);
        balanceOf[rewardPoolAddress] = totalSupply - balanceOf[founderAddress];
    }
}
