//
//  starWarsAPI.swift
//  StarWarsGuide
//
//  Created by Nicaely Joane on 03/11/21.
//
import UIKit
import Alamofire

class starWarsAPI: NSObject {
    func getDataMovies() {
        let baseURL = AF.request("https://swapi.dev/api/films", method: .get)
        baseURL.responseJSON { (data) in
            print(data)
//            switch data.result {
//            case .success(let value):
//                print(value)
//                break
//            case .failure(let error):
//                print(error)
//                break
//            }
        }
    }
}
