//
//  TableViewCell.swift
//  StarWarsGuide
//
//  Created by Nicaely Joane on 10/11/21.
//

import UIKit

class tableViewCell: UITableViewCell {

    @IBOutlet weak var tableViewCellImage: UIImageView!
    @IBOutlet weak var tableViewCellTitle: UILabel!
    @IBOutlet weak var tableViewCellSubtitle: UILabel!
    @IBOutlet weak var tableViewDirectorLabel: UILabel!
    @IBOutlet weak var tableViewCellDirector: UILabel!
    @IBOutlet weak var tableViewReleaseLabel: UILabel!
    @IBOutlet weak var tableViewCellRelease: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
