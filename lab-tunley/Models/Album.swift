//
//  Album.swift
//  lab-tunley
//
//  Created by Kyla Tolentino on 9/19/23.
//

import Foundation

struct AlbumSearchResponse: Decodable {
    let results: [Album]
}

struct Album: Decodable {
   // let artworkUrl100: URL
    let poster_path: String
}
