//
//  ViewController.swift
//  StarWarsGuide
//
//  Created by Nicaely Joane on 28/10/21.
//
import UIKit
import Alamofire

class tableViewCell: UITableViewCell {
    @IBOutlet weak var tableViewCellImage: UIImageView!
    @IBOutlet weak var tableViewCellTitle: UILabel!
    @IBOutlet weak var tableViewCellSubtitle: UILabel!
    @IBOutlet weak var tableViewDirectorLabel: UILabel!
    @IBOutlet weak var tableViewCellDirector: UILabel!
    @IBOutlet weak var tableViewReleaseLabel: UILabel!
    @IBOutlet weak var tableViewCellRelease: UILabel!
}

class ViewController: UIViewController {
    var items: [Displayable] = []
    var movies: [DataMovies] = []
    
    @IBOutlet weak var moviesTableView: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moviesTableView.dataSource = self
        moviesTableView.delegate = self
        
        moviesTableView.backgroundColor = UIColor(red: 255.0/255.0, green: 232.0/255.0, blue: 31.0/255.0, alpha: 1)
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
                self.moviesTableView.reloadData()
                break
            case .failure:
                print(data.error!)
                break
            }
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! tableViewCell
        let item = items[indexPath.row]
        
        cell.tableViewCellTitle?.text = item.titleLabel
        cell.tableViewCellSubtitle?.text = item.subtitleLabel
        cell.tableViewDirectorLabel?.text = item.directorLabel.label
        cell.tableViewCellDirector?.text = item.directorLabel.value
        cell.tableViewReleaseLabel?.text = item.releaseLabel.label
        cell.tableViewCellRelease?.text = item.releaseLabel.value
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("homeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 200
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        self.performSegue(withIdentifier: "nextViewController", sender: self)
//    }
}
