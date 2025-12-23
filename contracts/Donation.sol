// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Donation {
    // Lưu thông tin donate
    struct DonationInfo {
        address donor;
        uint256 amount;
        uint256 timestamp;
        string message;
    }

    DonationInfo[] private donations;

    address public owner;

    // ===== EVENTS =====

    // Khi có người donate
    event Donated(
        address indexed donor,
        uint256 amount,
        uint256 timestamp,
        string message
    );

    // Khi owner rút tiền
    event Withdrawn(
        address indexed to,
        uint256 amount,
        uint256 timestamp
    );

    // ===== CONSTRUCTOR =====
    constructor() {
        owner = msg.sender;
    }

    // ===== DONATE =====
    function donate(string calldata message) external payable {
        require(msg.value > 0, "Must send ETH");

        donations.push(
            DonationInfo({
                donor: msg.sender,
                amount: msg.value,
                timestamp: block.timestamp,
                message: message
            })
        );

        emit Donated(msg.sender, msg.value, block.timestamp, message);
    }

    // ===== READ DONATIONS =====
    function getAllDonations()
        external
        view
        returns (DonationInfo[] memory)
    {
        return donations;
    }

    function getTotalAmount() external view returns (uint256 total) {
        for (uint256 i = 0; i < donations.length; i++) {
            total += donations[i].amount;
        }
    }

    // ===== WITHDRAW =====
    function withdraw(uint256 amount) external {
        require(msg.sender == owner, "Not owner");
        require(amount > 0, "Invalid amount");
        require(amount <= address(this).balance, "Not enough balance");

        payable(owner).transfer(amount);

        emit Withdrawn(owner, amount, block.timestamp);
    }
}
