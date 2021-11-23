//
//  ViewController.swift
//  StarWarsGuide
//
//  Created by Nicaely Joane on 28/10/21.
//
import UIKit
import Alamofire

class ViewController: UIViewController {
    var selected: Displayable?
    var items: [Displayable] = []
    var images: [UIImage] = [ UIImage(named: "Star_Wars_Episode4")!,
                              UIImage(named: "Star_Wars_Episode5")!,
                              UIImage(named: "Star_Wars_Episode6")!,
                              UIImage(named: "Star_Wars_Episode1")!,
                              UIImage(named: "Star_Wars_Episode2")!,
                              UIImage(named: "Star_Wars_Episode3")!
    ]
    
    @IBOutlet weak var moviesTableView: UITableView?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moviesTableView?.delegate = self
        moviesTableView?.dataSource = self
        
        moviesTableView?.backgroundColor = UIColor(red: 255.0/255.0, green: 232.0/255.0, blue: 31.0/255.0, alpha: 1)
        view.backgroundColor = UIColor(red: 255.0/255.0, green: 232.0/255.0, blue: 31.0/255.0, alpha: 1)
        
        getDataMovies()
    }
    
    func getDataMovies() {
        AF.request("https://swapi.dev/api/films")
        .validate()
        .responseDecodable(of: Movies.self) { (data) in
            guard let movies = data.value else { return }
            switch data.result {
            case .success:
                self.items = movies.all
                self.moviesTableView?.reloadData()
                break
            case .failure:
                print(data.error!)
                break
            }
        }
    }
}
