//
//  SettingsTableViewCell.swift
//  MVVMWeatherDemoAPP
//
//  Created by Dennis Vera on 12/4/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    // MARK: - Type Properties
    
    static let reuseIdentifier = "SettingsCell"
    
    // MARK: - Properties
    
    @IBOutlet var mainLabel: UILabel!
    
    // MARK: - Initialization
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Configure Cell
        selectionStyle = .none
    }
    
    // MARK: - Configuration
    
    func configure(withViewModel viewModel: SettingsRepresentable) {
        mainLabel.text = viewModel.text
        accessoryType = viewModel.accessoryType
    }
    
}
