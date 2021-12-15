// SPDX-License-Identifier: CC-BY-1.0
// Creative Commons Attribution 1.0 Generic

// Contract will be compiled on version 0.7.0 or greater
pragma solidity ^0.7.0;

// A smart contract to model a music album
contract Album {
    // A custom data structure used to define a music album
    struct musicAlbum {
        // The artist/group who recorded the album
        string artist;
        // The album's title
        string albumTitle;
        // The number of tracks on the album
        uint256 tracks;
    } // struct musicAlbum

    // The current album information
    musicAlbum public currentAlbum;
    // A mapping of every user's favorite album
    mapping(address => musicAlbum) public userAlbums;

    // The author of this smart contract
    string public constant contractAuthor = "ffrancis-reis";

    // The owner of the current instance of this smart contract
    address owner;

    // Event which will be raised anytime the current album information is updated.
    event albumEvent(
        string albumEvent_Description,
        string albumEvent_Artist,
        string albumEvent_Title,
        uint256 albumEvent_Tracks
    );

    // Event which will be raised anytime the current album information is updated.
    event errorEvent(string errorEvent_Description);

    // Contract constructor.
    //   This code is called once when the contract instance is deployed to the Ethereum network
    constructor() {
        // Feel free to use your own preferred values below :)
        currentAlbum.artist = "CD Projekt Red";
        currentAlbum.albumTitle = "Cyberpunk 2077 Soundtrack";
        currentAlbum.tracks = 19;
        // Set the owner property of this contract instance to the initiator of this contract deployment
        owner = msg.sender;
    } // constructor

    // This function modifier ensures that the initiator of any transaction
    //   it is attached to matches the address of the contract's owner.
    // Use this function modifier for functions that should only
    //   be performed by the owner of this contract instance.
    modifier onlyOwner() {
        if (msg.sender != owner) {
            // The initiator of this transaction is NOT the contract instance's owner!
            emit errorEvent(
                "Only the owner of this contract instance can perform this function!"
            );
        } else {
            _;
        } // else
    } // modifier onlyOwner

    // Returns the current album information
    function getCurrentAlbum()
        public
        view
        returns (
            string memory,
            string memory,
            uint256
        )
    {
        return (
            currentAlbum.artist,
            currentAlbum.albumTitle,
            currentAlbum.tracks
        );
    } // getCurrentAlbum

    // Set the current album information
    function setCurrentAlbum(
        string memory _artist,
        string memory _albumTitle,
        uint256 _tracks
    ) public onlyOwner {
        currentAlbum.artist = _artist;
        currentAlbum.albumTitle = _albumTitle;
        currentAlbum.tracks = _tracks;

        // Raise the albumEvent to let any event subscribers know the current album information has changed.
        emit albumEvent(
            "The current album information has been updated",
            _artist,
            _albumTitle,
            _tracks
        );
    } // setCurrentAlbum

    // Returns the current user's favorite album information
    function getUsersFavoriteAlbum()
        public
        view
        returns (
            string memory,
            string memory,
            uint256
        )
    {
        return (
            userAlbums[msg.sender].artist,
            userAlbums[msg.sender].albumTitle,
            userAlbums[msg.sender].tracks
        );
    } // getUsersFavoriteAlbum

    // Set the current user's favorite album information
    function setUsersFavoriteAlbum(
        string memory _artist,
        string memory _albumTitle,
        uint256 _tracks
    ) public {
        userAlbums[msg.sender].artist = _artist;
        userAlbums[msg.sender].albumTitle = _albumTitle;
        userAlbums[msg.sender].tracks = _tracks;

        // Raise the albumEvent to let any event subscribers know the current album information has changed.
        emit albumEvent(
            "You have updated your personal favorite album information",
            _artist,
            _albumTitle,
            _tracks
        );
    } // setUsersFavoriteAlbum
} // Album
