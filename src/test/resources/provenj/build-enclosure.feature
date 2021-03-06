# features/build-enclosure.feature
Feature: Create an enclosure which is a temporary directory that contains all assets to be submitted

  Scenario: Create an enclosure from a picture and metadata
    Given the Bitcoin block number 438712
    And the Bitcoin block hash "00000000000000000341b8be019c7c1bff721b2d412285ab796ef5ab2ae36213"
    And the Ethereum block number 2619567
    And the Ethereum block hash "0xcca5f32676df55171ffabcb32b69eaec0593ce7ae1912228656bd8e213475ecb"
    And the IPFS hash from the last file "QmP1KyrSsD4KGPFRsVxV66cZ95LqhLWGbwCakzRsoKjrTu"
    And the hashes from the last file "dff0c94255cd1f68a824e81005b00f617afecd74c6cccecfbae0d2b7875fabf3"
    And the previous GUID "1c9a114e-d2e9-53df-051a-b8f3a316c1ae"
    And the GUID "0b89ff5d-c1d8-4dce-949a-a7e29215b09d"
    And the creator "0x180E66363D7518B388282ED5d567908c2b901584"
    When I provide a JPEG file "src/test/resources/provenj/2016-12-01-175915.jpg"
    Then there should exist a directory
    And it should contain a manifest
    And it should contain an index
    And it should contain in the payload directory the file "2016-12-01-175915.jpg"
    And the GUID everywhere is "0b89ff5d-c1d8-4dce-949a-a7e29215b09d"
    And the previous GUID everywhere is "1c9a114e-d2e9-53df-051a-b8f3a316c1ae"
    And the File Hashes are the same everywhere
    And the Bitcoin block hash everywhere is "00000000000000000341b8be019c7c1bff721b2d412285ab796ef5ab2ae36213"
    And the Bitcoin block number everywhere is 438712
    And the Ethereum block hash everywhere is "0xcca5f32676df55171ffabcb32b69eaec0593ce7ae1912228656bd8e213475ecb"
    And the Ethereum block number everywhere is 2619567
    And the last IPFS file hash everywhere is "QmP1KyrSsD4KGPFRsVxV66cZ95LqhLWGbwCakzRsoKjrTu"
    And the last file hashes everywhere is "dff0c94255cd1f68a824e81005b00f617afecd74c6cccecfbae0d2b7875fabf3"
    And the creator everywhere is "0x180E66363D7518B388282ED5d567908c2b901584"
    And the manifest contains the current version

  Scenario: Create another enclosure but specify a filename
    Given the file name "DogTongue.jpeg"
    And the current Bitcoin block info
    And the current Ethereum block info
    And the GUID "1c9a004e-d2e2-3edf-121c-c3b17321c154"
    And the creator "0x880E66363D7518B388282ED5d567908c2b901584"
    When I provide a JPEG file "src/test/resources/provenj/2016-12-01-175915.jpg"
    Then it should contain in the payload directory the file "DogTongue.jpeg"
    And the GUID everywhere is "1c9a004e-d2e2-3edf-121c-c3b17321c154"
    And the IPFS hash returned should be accessible from the IPFS gateway
    And the Bitcoin block number everywhere is greater than 452428
    And the Ethereum block number everywhere is greater than 3158860
    And the creator everywhere is "0x880E66363D7518B388282ED5d567908c2b901584"


  Scenario: Modify existing file
    Given the Bitcoin block number 438712
    And the GUID "0b89ff5d-c1d8-4dce-949a-a7e29215b09d"
    When I ask to directly tag a copy of the JPEG file "src/test/resources/provenj/2016-12-01-175915.jpg"
    Then the GUID everywhere is "0b89ff5d-c1d8-4dce-949a-a7e29215b09d"
    And the Bitcoin block number everywhere is 438712
