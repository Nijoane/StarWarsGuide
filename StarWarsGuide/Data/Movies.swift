//
//  Movies.swift
//  StarWarsGuide
//
//  Created by Nicaely Joane on 05/11/21.
//

import Foundation

struct Movies: Decodable {
    let count: Int
    let all: [DataMovies]
    
    enum CodingKeys: String, CodingKey {
        case count
        case all = "results"
    }
}

