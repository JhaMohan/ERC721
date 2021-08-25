pragma solidity ^0.8.0;


import '@openzeppelin/contracts/token/ERC721/ERC721.sol';


contract openzeppelinERC721 is ERC721 {

    constructor() ERC721("Token Name",'Tokensymbol'){
    }
}


contract openzeppelinERC7211 is ERC721 {

    constructor() ERC721("Token Name",'Tokensymbol'){
        _safeMint(msg.sender,0);
    }
}


contract openzeppelinERC7212 is ERC721 {
    address owner;

    constructor() ERC721("Token Name",'Tokensymbol'){
        owner = msg.sender;
    }

    function mint(address to,uint256 tokenId) external {
        require(msg.sender==owner,'only owner');
        _safeMint(to,tokenId);
    }
}

contract openzeppelinERC7213 is ERC721 {

    constructor() ERC721("Token Name",'Tokensymbol'){
    }

    function faucet(address to,uint256 tokenId) external {
        _safeMint(to,tokenId);
    }


}