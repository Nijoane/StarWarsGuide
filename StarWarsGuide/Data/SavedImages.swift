//
//  SavedImages.swift
//  StarWarsGuide
//
//  Created by Nicaely Joane on 16/11/21.
//

import Foundation
import UIKit

struct SavedImages {


    static func image(for viewController: ViewController) -> UIImage {
        return imagesDictionary["\(type(of: viewController))"] as! UIImage
    }
}
