//
//  tablewViewDataSource.swift
//  StarWarsGuide
//
//  Created by Nicaely Joane on 19/11/21.
//

import Foundation
import UIKit

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
        cell.tableViewCellImage?.image = images[indexPath.row]
        
        return cell
    }
}

