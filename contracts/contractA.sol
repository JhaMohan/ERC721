pragma solidity ^0.8.0;

import '@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol';
import '@openzeppelin/contracts/token/ERC721/IERC721';


interface contractB {
    function deposite(uint256 _tokenId) external;
    function withdraw(uint256 _tokenId) external;
}


contract contractA is ERC721Holder {

    IERC721 public token;
    contractB public contractb;

    constructor(addtess _token,address _contractB) {
        contractb = contractB(_cobtractB);
        token = IERC721(_token);
    }

    function deposite(uint256 _tokenId) external {
        token.safeTransferFrom(msg.sender,address(this),_tokenId);
        token.approve(address(contractb),_tokenId)
        contractb.deposite(_tokenId);

    }


    function withdraw(uint256 _tokenId) external {
        contractb.withdraw(_tokenId);
        token.safeTransferFrom(address(this),msg.sender,_tokenId);
    }

}
