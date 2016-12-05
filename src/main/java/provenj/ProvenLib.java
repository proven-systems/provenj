package provenj;

// Constants needed across Proven. This is in an interface because it is never instantiated.
public interface ProvenLib {
    String PROVEN_NAMESPACE             = "http://ns.facted.net/proven/1.0/facted/";
    String PROVEN_PREFIX                = "Proven";
    String PROVEN_INDEX                 = "index.html";
    String PROVEN_MANIFEST              = "manifest.json";
    String PROVEN_CONTENT_DIRECTORY     = "content";
    String PROVEN_FILE_NAME             = "FileName";
    String PROVEN_FILE_HASHES           = "FileHashes";
    String PROVEN_BITCOIN_BLOCK_NUMBER  = "BitcoinBlockNumber";
    String PROVEN_BITCOIN_BLOCK_HASH    = "BitcoinBlockHash";
    String PROVEN_ETHEREUM_BLOCK_NUMBER = "EthereumBlockNumber";
    String PROVEN_ETHEREUM_BLOCK_HASH   = "EthereumBlockHash";
    String PROVEN_PREVIOUS_IPFS_HASH    = "PreviousIPFSHash";
    String PROVEN_PREVIOUS_FILE_HASHES  = "PreviousFileHashes";
    String PROVEN_GUID                  = "GUID";
}
