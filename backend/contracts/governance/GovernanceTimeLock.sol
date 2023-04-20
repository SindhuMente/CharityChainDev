// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "@openzeppelin/contracts/governance/TimelockController.sol";

contract GovernanceTimeLock is TimelockController {
    constructor(
        uint256 min_delay,
        address[] memory approved_proposers,
        address[] memory executors
    )
        TimelockController(min_delay, approved_proposers, executors, address(0))
    {}
}
