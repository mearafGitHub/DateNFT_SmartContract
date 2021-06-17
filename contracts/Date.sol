// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Date is Ownable, ERC721 {
  struct Metadata{
    string title;
    uint16 year;
    uint8 month;
    uint8 day;
    uint8 color;
  }
  mapping(uint256 => Metadata) id_to_date;
  constructor() ERC721("Date", "DATE"){
    mint(1,1,1,4, "ORIGIN");
    (uint16 now_year, uint8 now_month, uint8 now_now_day) = times                                                                                                                                                                                                                                                                                                                                                                                                                                                                               tampToDate(now);
    mint(2015, 7, 30, 6, "ETH GENESIS");
    mint(1452, 4, 15, 5, "Art is never finished, only abandoned.");
    mint(1605, 11, 5, 1, "Remember, remember, the 5th of November.");
    mint(1564, 4, 23, 2, "To be, or not to be");
    mint(1969, 7, 20, 3, "One small step for man");
    mint(1986, 6, 12, 0, "CBD");
    mint(1971, 6, 28, 7, "Elon's Birthday");

  }

  function mint(uint16 year, uint8 month, uint8 day, uint8 color, string memory title) internal {
      uint256 tokenId = id(year, month, day);
      
      id_to_date[tokenId] = Metadata(year, month, day, color, title);
      _safeMint(msg.sender, tokenId);
   }

  function claim(uint16 year, uint8 month, uint8 day, string calldata title) external payable {
      require(msg.value == 10 finney, "claiming a date costs 10 finney");
    
  }
  
}