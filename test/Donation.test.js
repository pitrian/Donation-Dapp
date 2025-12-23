const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Donation Contract", function () {
  let donation, owner, user;

  beforeEach(async function () {
    [owner, user] = await ethers.getSigners();
    const Donation = await ethers.getContractFactory("Donation");
    donation = await Donation.deploy();
  });

  it("Should accept donation and record it", async function () {
    await donation.connect(user).donate("hello", {
      value: ethers.parseEther("0.01"),
    });

    const list = await donation.getAllDonations();
    expect(list.length).to.equal(1);
    expect(list[0].donor).to.equal(user.address);
  });

  it("Should emit event when donate", async function () {
    await expect(
      donation.connect(user).donate("test", {
        value: ethers.parseEther("0.01"),
      })
    ).to.emit(donation, "Donated");
  });

  it("Owner can withdraw and emit event", async function () {
    await donation.connect(user).donate("hi", {
      value: ethers.parseEther("0.02"),
    });

    await expect(
      donation.withdraw(ethers.parseEther("0.01"))
    ).to.emit(donation, "Withdrawn");
  });
});
 
