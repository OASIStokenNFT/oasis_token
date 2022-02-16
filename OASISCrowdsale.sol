pragma solidity ^0.5.5;

import "@openzeppelin/contracts/crowdsale/Crowdsale.sol";
import "@openzeppelin/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "@openzeppelin/contracts/crowdsale/validation/TimedCrowdsale.sol";
import "@openzeppelin/contracts/crowdsale/distribution/PostDeliveryCrowdsale.sol";

contract CybershinuCrowdsale is Crowdsale, CappedCrowdsale, TimedCrowdsale, PostDeliveryCrowdsale {
    constructor(
        uint256 rate, 
        address payable wallet, 
        IERC20 token, 
        uint256 cap, 
        uint256 openingTime, 
        uint256 closingTime
        ) 
    CappedCrowdsale(cap) 
    TimedCrowdsale(openingTime, closingTime) 
    PostDeliveryCrowdsale()
    Crowdsale(rate, wallet, token) public {}
}
