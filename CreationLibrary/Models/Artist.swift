//
//  Music.swift
//  CreationLibrary
//
//  Created by Никита Шинов on 17.11.2021.
//

struct Artist {
    
    let name: String
    let musicGenre: MusicGenre
    let photo: String
    let description: String
    let country: Country
    
    static func getListOfGenres () -> [MusicGenre] {
        var listOfMusicGenres: [MusicGenre] = []
        for genre in MusicGenre.allCases {
            listOfMusicGenres.append(genre)
        }
        return listOfMusicGenres
    }
    
    static func getArtist (_ genre: MusicGenre) -> [Artist] {
        var listOfArtists: [Artist] = []
        let data = DataManager().artist
        for artist in data {
            if artist.musicGenre == genre {
                listOfArtists.append(artist)
            }
        }
        return listOfArtists
    }
    
}


enum MusicGenre: String, CaseIterable {
    
    case rock = "Rock"
    case pop = "Pop"
    case rap = "Rap"
    
}

enum Country: String, CaseIterable {
    
    case usa = "USA"
    case uk = "UK"
    case australia = "Australia"
    case canada = "Canada"
    
}
