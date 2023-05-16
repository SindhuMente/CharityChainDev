// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

contract CCToken is ERC20Votes {
    uint256 public cc_maxSupply = (1000000) * (10 ** 18);

    constructor() ERC20("CharityChain", "CC") ERC20Permit("CharityChain") {
        _mint(msg.sender, cc_maxSupply);
    }

    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal override(ERC20Votes) {
        super._afterTokenTransfer(from, to, amount);
    }
}
