// SPDX-License-Identifier: MIT
import "hardhat/console.sol";

pragma solidity ^0.8.0;

contract MyErrorsAndChecks {
    uint256 public maxAmount = 100;

    function updateMax() public {
        maxAmount = 50;
    }

    function myFunc(uint256 _x, uint256 _y) public view returns (uint256 xy) {
        require(_x > _y, "x must be greater than y");
        checkMax();
        return _x + _y;
    }

    function myPureRevertFunc(uint256 _x, uint256 _y)
        public
        pure
        returns (uint256 xy)
    {
        // imagine many lines of code
        if (_x == 10) {
            revert("x should never equal 10");
        }
        return _x + _y;
    }

    function checkMax() internal view {
        assert(maxAmount == 100);
    }
}
