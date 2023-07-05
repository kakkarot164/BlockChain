pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
//Struct:
contract Struct {
    struct Book {
        string title;
        string author;
        uint book_id;
    }

    Book public book;

    function setBook() public {
        book = Book('Learn Javascript', 'TP', 4);
    }

    function getBookId() public view returns (uint) {
        return book.book_id;
    }
}