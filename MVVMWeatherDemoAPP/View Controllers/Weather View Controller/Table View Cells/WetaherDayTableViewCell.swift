//
//  WetaherDayTableViewCell.swift
//  MVVMWeatherDemoAPP
//
//  Created by Dennis Vera on 12/2/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import UIKit

class WeatherDayTableViewCell: UITableViewCell {
    
    // MARK: - Type Properties
    
    static let reuseIdentifier = "WeatherDayCell"
    
    // MARK: - Properties
    
    @IBOutlet var dayLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var windSpeedLabel: UILabel!
    @IBOutlet var temperatureLabel: UILabel!
    @IBOutlet var iconImageView: UIImageView!
    
    // MARK: - Initialization
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Configure Cell
        selectionStyle = .none
    }
    
}
