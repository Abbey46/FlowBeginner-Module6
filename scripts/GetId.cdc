import NonFungibleToken from 0x06
import CryptoPoops from 0x06

// Main script function to fetch NFT IDs from an account's public collection
pub fun main(acctAddress: Address): [UInt64] {
    
    // Obtain an authorized reference to the account's publicly accessible NFT collection
    let collectionRef = getAccount(acctAddress)
        .getCapability(/public/CryptoPoopsCollection)
        .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>()

    // Retrieve NFT IDs from the public collection by invoking the getIDs function
    return collectionRef.getIDs()
}
