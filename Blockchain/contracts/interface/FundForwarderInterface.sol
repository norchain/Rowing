pragma solidity ^0.4.24;

interface FundForwarderInterface {
    function deposit() external payable returns(bool);
    function status() external view returns(address, address, bool);
    function startMigration(address _newCorpBank) external returns(bool);
    function cancelMigration() external returns(bool);
    function finishMigration() external returns(bool);
    function setup(address _firstCorpBank) external;
}