# Overview 

Governor.sol
- In charge of proposals and voting rights etc 
Timelock.sol
- Contract that gives a buffer between executing proposals 
- This is the contract that will handle all of the money, ownerships, etc
CCToken.sol
- Token inherits ERC20 voteable functionality
- getVotes(address account): Returns the number of votes owned by a specific account.
- getPastVotes(address account, uint256 blockNumber): Returns the number of votes owned by a specific account at a specific block number.
CharityAccount.sol
- Contains the information for a Charity Organizations 
Withdrawal.sol
- Owned by the Timelock contract 
- Contains the actions that can only be executed after the approval of the voters
- For our case, it is just the ability to withdrawal funds 

#Testing 
Will Update ASAP 
