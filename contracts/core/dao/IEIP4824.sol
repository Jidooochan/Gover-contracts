// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

/// @title ERC-4824 DAOs
/// @dev See <https://eips.ethereum.org/EIPS/eip-4824>
interface IEIP4824 {
    event DAOURIUpdate(address daoAddress, string daoURI);
    /// @notice A distinct Uniform Resource Identifier (URI) pointing to a JSON object following the "ERC-4824 DAO JSON-LD Schema". This JSON file splits into four URIs: membersURI, proposalsURI, activityLogURI, and governanceURI. The membersURI should point to a JSON file that conforms to the "ERC-4824 Members JSON-LD Schema". The proposalsURI should point to a JSON file that conforms to the "ERC-4824 Proposals JSON-LD Schema". The activityLogURI should point to a JSON file that conforms to the "ERC-4824 Activity Log JSON-LD Schema". The governanceURI should point to a flatfile, normatively a .md file. Each of the JSON files named above can be statically-hosted or dynamically-generated.
    function daoURI() external view returns (string memory _daoURI);
}