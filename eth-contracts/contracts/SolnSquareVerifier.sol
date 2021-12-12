pragma solidity >0.4.24;
pragma experimental ABIEncoderV2;

// pragma solidity ^0.5.16;

// pragma solidity 0.5.11;
// pragma solidity >=0.4.21 <0.6.0;

import {ERC721HouseTitle} from "./ERC721Mintable.sol";
import "./verifier.sol";

// TODO define a contract call to the zokrates generated solidity contract <Verifier> or <renamedVerifier>
contract ISquareVerifier is Verifier {

}

// TODO define another contract named SolnSquareVerifier that inherits from your ERC721Mintable class
contract SolnSquareVerifier is ERC721HouseTitle {
    ISquareVerifier public squareContract;

    constructor(address verifierContractAddress) public ERC721HouseTitle() {
        squareContract = ISquareVerifier(verifierContractAddress);
    }

    // TODO define a solutions struct that can hold an index & an address
    struct Solution {
        uint256 index;
        address solvedByAddress;
    }

    // TODO define an array of the above struct
    Solution[] solutions;

    // TODO define a mapping to store unique solutions submitted
    mapping(bytes32 => Solution) private uniqueSolutions;

    // TODO Create an event to emit when a solution is added
    event SolutionAdded(address to, uint256 index);

    // TODO Create a function to add the solutions to the array and emit the event
    function addSolution(
        address _solvedByAddress,
        uint256 _index,
        bytes32 _hashKey
    ) internal {
        Solution memory _solution = Solution({
            index: _index,
            solvedByAddress: _solvedByAddress
        });
        solutions.push(_solution);
        uniqueSolutions[_hashKey] = _solution;
        emit SolutionAdded(_solvedByAddress, _index);
    }

    // TODO Create a function to mint new NFT only after the solution has been verified
    function mintNewNFT(
        address _to,
        uint256 _tokenId,
        uint256[2] memory a,
        uint256[2][2] memory b,
        uint256[2] memory c,
        uint256[2] memory input
    ) public {
        // hash solution to get key
        bytes32 _hashKey = keccak256(abi.encodePacked(a, b, c, input));
        //  - make sure the solution is unique (has not been used before)
        require(
            uniqueSolutions[_hashKey].solvedByAddress == address(0),
            "Error! solution has already been used"
        );
        //  verify solution
        require(
            squareContract.verifyTx(a, b, c, input),
            "Error! solution can not be verified"
        );

        addSolution(_to, _tokenId, _hashKey);
        //  - make sure you handle metadata as well as tokenSuplly
        super.mint(_to, _tokenId);
    }
}
