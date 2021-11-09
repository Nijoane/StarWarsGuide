//
//  Displayable.swift
//  StarWarsGuide
//
//  Created by Nicaely Joane on 05/11/21.
//

import Foundation
protocol Displayable {
    var titleLabel: String { get }
    var subtitleLabel: String { get }
    var directorLabel: (label:String, value: String) { get }
    var releaseLabel: (label: String, value: String) { get }
    var producerLabel: (label: String, value: String) { get }
    var openingLabel: (label: String, value: String) { get }
}
