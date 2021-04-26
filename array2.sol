pragma solidity ^0.6.0;

contract MyContract {
    //mappings
    mapping(uint=>string) public names;
    mapping(uint=>Book) public books;
    
    mapping(address=>mapping(uint=>Book)) public myBooks;

    
    struct Book {
        string title;
        string author;
    }
    
    
    constructor() public {
        names[1] = "Ahmet";
        names[2] = "Baran";
        names[3] = "Ceyhan";
        
    }
    function addBook(uint _id, string memory _title, string memory _author) public{
        books[_id]=Book(_title,_author);
        
    }
    
    function addMybook(uint _id, string memory _title, string memory _author) public{
        myBooks[msg.sender][_id]=Book(_title,_author);
    
    }
}
