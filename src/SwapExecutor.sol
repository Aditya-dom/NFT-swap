// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface ISwapRouter {
    function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external returns (uint[] memory amounts);
}

contract SwapExecutor {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    function approveToken(address token, address router, uint amount) external onlyOwner {
        IERC20(token).approve(router, amount);
    }

    function executeSwap(
        address router,
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address recipient,
        uint deadline
    ) external onlyOwner {
        ISwapRouter(router).swapExactTokensForTokens(
            amountIn, amountOutMin, path, recipient, deadline
        );
    }
}
