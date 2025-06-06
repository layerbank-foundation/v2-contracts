// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.12;

interface IPriceCalculator {
    struct ReferenceData {
        uint256 lastData;
        uint256 lastUpdated;
    }

    function priceOf(address asset) external view returns (uint256);

    function pricesOf(address[] memory assets) external view returns (uint256[] memory);

    function priceOfETH() external view returns (uint256);

    function getUnderlyingPrice(address lToken) external view returns (uint256);

    function getUnderlyingPrices(address[] memory lTokens) external view returns (uint256[] memory);
}
