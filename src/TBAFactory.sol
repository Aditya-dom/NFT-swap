// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./ERC6551Registry.sol"; // Import the IERC6551Registry interface

contract TBAFactory {
    address public registry;

    constructor(address _registry) {
        registry = _registry;
    }

    function createTBA(
        address implementation,
        uint256 chainId,
        address tokenContract,
        uint256 tokenId
    ) public returns (address) {
        return IERC6551Registry(registry).createAccount(
            implementation,
            chainId,
            tokenContract,
            tokenId,
            block.timestamp
        );
    }
}
