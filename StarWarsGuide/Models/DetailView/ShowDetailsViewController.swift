//
//  ShowDetailsViewController.swift
//  StarWarsGuide
//
//  Created by Nicaely Joane on 10/11/21.
//

import Foundation
import UIKit

class ShowDetailsViewController: ViewController {
    var dataMovies: Displayable?
    
    @IBOutlet weak var showDetailViewTitle: UILabel!
    @IBOutlet weak var showDetailViewSubtitle: UILabel!
    @IBOutlet weak var showDetailDirectorLabel: UILabel!
    @IBOutlet weak var showDetailViewDirector: UILabel!
    @IBOutlet weak var showDetailProducerLabel: UILabel!
    @IBOutlet weak var showDetailViewProducer: UILabel!
    @IBOutlet weak var showDetailReleaseLabel: UILabel!
    @IBOutlet weak var showDetailViewRelease: UILabel!
    @IBOutlet weak var showDetailOpeningLabel: UILabel!
    @IBOutlet weak var showDetailViewOpening: UILabel!
    @IBOutlet weak var showDetailViewBackGroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showDetailInit()
    }
    
    private func showDetailInit() {
        guard let detail = dataMovies else { return }
        
        showDetailViewTitle.text = detail.titleLabel
        showDetailViewSubtitle.text = detail.subtitleLabel
        showDetailDirectorLabel.text = detail.directorLabel.label
        showDetailViewDirector.text = detail.directorLabel.value
        showDetailProducerLabel.text = detail.producerLabel.label
        showDetailViewProducer.text = detail.producerLabel.value
        showDetailReleaseLabel.text = detail.releaseLabel.label
        showDetailViewRelease.text = detail.releaseLabel.value
        showDetailOpeningLabel.text = detail.openingLabel.label
        showDetailViewOpening.text = detail.openingLabel.value
        
        showDetailViewBackGroundImage.image = UIImage(named: "mestre_yoda_background")
    }
}

