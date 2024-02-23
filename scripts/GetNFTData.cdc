import NonFungibleToken from 0x06
import CryptoPoops from 0x06

pub fun main(acctAddress: Address, id: UInt64): &NonFungibleToken.NFT {
// Borrow a reference to the public collection using the provided address
    let contract = getAccount(acctAddress).getCapability(/public/CryptoPoopsCollection)
      .borrow<&CryptoPoops.Collection>()
    

    // Borrow a reference to the NFT metadata using the borrowAuthNFT function
  let nftData = contract.borrowAuthNFT(id: id)
  
  // Return the borrowed NFT reference
  return nftData
}

