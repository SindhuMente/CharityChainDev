// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Withdrawal is Ownable {
    uint256 private amount_withdrawal;
    uint256 private total_balance;

    event WithdrawalPermitted(uint256 withdrawal_amt);

    function allow_withdrawal(uint256 withdrawal_amt) public onlyOwner {
        require(
            total_balance >= withdrawal_amt,
            "Organization does not have enough donations to withdrawal this much!"
        );
        amount_withdrawal = withdrawal_amt;
        emit WithdrawalPermitted(withdrawal_amt);
    }
}
