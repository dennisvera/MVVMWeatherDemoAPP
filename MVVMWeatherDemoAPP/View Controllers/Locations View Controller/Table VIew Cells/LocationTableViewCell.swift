//
//  LocationTableViewCell.swift
//  MVVMWeatherDemoAPP
//
//  Created by Dennis Vera on 12/4/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import UIKit

class LocationTableViewCell: UITableViewCell {
    
    // MARK: - Type Properties
    
    static let reuseIdentifier = "LocationCell"
    
    // MARK: - Properties
    
    @IBOutlet var mainLabel: UILabel!
    
    // MARK: - Initialization
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - Configuration
    
    func configure(withViewModel viewModel: LocationRepresentable) {
        mainLabel.text = viewModel.text
    }
    
    
}
