//
//  Movie.swift
//  MoviesAppNew
//
//  Created by Aaron Garman on 11/6/25.
//

import Foundation

struct MoviesApiResponse: Decodable {
    let results: [Movie]
}

struct Movie: Decodable {
    let title: String
    let overview: String
    let posterPath: String?
    let backdropPath: String?
    
    private enum CodingKeys: String, CodingKey {
        case title
        case overview
        case posterPath = "poster_path"
        case backdropPath = "backdrop_path"
    }
}

// diff file name/structure any?
// more attributes pull?
