// SPDX-License-Identifier: MIT
pragma solidity 0.8.2;

contract ProgramSolving {
    uint256 private index = 0; // admins count
    struct Account {
        string name;
        uint256 balance;
    }
    Account[3] private admins;

    function addAdmin(Account memory _admin) public {
        admins[index++] = _admin;
    }

    function getAllAdmins() public view returns (Account[] memory) {
        Account[] memory _admins = new Account[](index);
        for (uint i = 0; i < index; i++) { // up to the number of admins
            _admins[i] = admins[i];
        }
        return _admins;
    }
}
