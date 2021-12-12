const SquareVerifier = artifacts.require("Verifier");
const SolnSquareVerifier = artifacts.require("SolnSquareVerifier");
const zokratesProof = require("../../zokrates/code/square/proof.json");

contract("TestSolnSquareVerifier", (accounts) => {
  const account_one = accounts[0];
  const account_two = accounts[1];
  describe("should work for valid and invalid scenario", function () {
    beforeEach(async function () {
      const squareVerifier = await SquareVerifier.new({ from: account_one });
      this.contract = await SolnSquareVerifier.new(squareVerifier.address, {
        from: account_one,
      });
    });

    // Test if a new solution can be added for contract - SolnSquareVerifier
    it("Test if a new solution can be added for contract - SolnSquareVerifier", async function () {
      let result = await this.contract.mintNewNFT(
        account_two,
        1,
        zokratesProof.proof.a,
        zokratesProof.proof.b,
        zokratesProof.proof.c,
        zokratesProof.inputs,
        { from: account_one }
      );

      assert.equal(
        result.logs[0].event,
        "SolutionAdded",
        "Error! solution can not be verified"
      );
    });

    // Test if an ERC721 token can be minted for contract - SolnSquareVerifier
    it("Test if an ERC721 token can be minted for contract - SolnSquareVerifier", async function () {
      let mint = true;
      try {
        await this.contract.mintNewNFT(
          account_two,
          1,
          zokratesProof.proof.a,
          zokratesProof.proof.b,
          zokratesProof.proof.c,
          zokratesProof.inputs,
          { from: account_one }
        );
      } catch (e) {
        mint = false;
      }

      assert.equal(mint, true, "Error! couldn't mint a new NFT");
    });
  });
});
