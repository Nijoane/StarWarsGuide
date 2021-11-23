//
//  Movies.swift
//  StarWarsGuide
//
// Created by Nicaely Joane on 05/11/21.
//

import Foundation
import UIKit

struct DataMovies: Decodable {
    let id: Int
    let title: String
    let director: String
    let producer: String
    let releaseDate: String
    let openingCrawl: String
    
    enum CodingKeys: String, CodingKey {
        case id = "episode_id"
        case title
        case director
        case producer
        case releaseDate = "release_date"
        case openingCrawl = "opening_crawl"
    }
}

extension DataMovies: Displayable {
    var titleLabel: String {
        title
    }
    var subtitleLabel: String {
        "Episode \(String(id))"
    }
    var directorLabel: (label: String, value: String) {
       ("DIRECTOR", director)
    }
    var releaseLabel: (label: String, value: String) {
       ( "RELEASE", releaseDate)
    }
    var producerLabel: (label: String, value: String) {
        ("PRODUCER", producer)
    }
    var openingLabel: (label: String, value: String) {
        ("OPENING", openingCrawl)
    }
}
