// SPDX-License-Identifier: CC-BY-1.0
// Creative Commons Attribution 1.0 Generic

// Contract will be compiled on version 0.7.0 or greater
pragma solidity ^0.7.0;

// A smart contract to model a music album
contract Album {
    // Local state variables
    // The artist/group who recorded the album
    string public artist;
    // The album's title
    string public albumTitle;
    // The number of tracks on the album
    uint256 public tracks;

    // The author of this smart contract
    string public constant contractAuthor = "ffrancis-reis";

    constructor() {
        artist = "CD Projekt Red";
        albumTitle = "Cyberpunk 2077 Soundtrack";
        tracks = 19;
    } // constructor

    // Returns the current album information
    function getAlbum()
        public
        view
        returns (
            string memory,
            string memory,
            uint256
        )
    {
        return (artist, albumTitle, tracks);
    } // getAlbum

    // Set the album information
    function setAlbum(
        string memory _artist,
        string memory _albumTitle,
        uint256 _tracks
    ) public {
        artist = _artist;
        albumTitle = _albumTitle;
        tracks = _tracks;
    } // setAlbum
} // Album
