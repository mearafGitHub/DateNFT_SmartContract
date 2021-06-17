const Test_Date = artifacts.require("Test_Date");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("Test_Date", function (/* accounts */) {
  it("should assert true", async function () {
    await Test_Date.deployed();
    return assert.isTrue(true);
  });
});
