//
//  SettingsViewTemperatureViewModel.swift
//  MVVMWeatherDemoAPP
//
//  Created by Dennis Vera on 1/2/18.
//  Copyright © 2018 Dennis Vera. All rights reserved.
//

import UIKit

struct SettingsViewTemperatureViewModel {
    
    // MARK: - Properties
    
    let temperatureNotation: TemperatureNotation
    
    // MARK: -
    
    var text: String {
        switch temperatureNotation {
        case .fahrenheit: return "Fahrenheit"
        case .celsius: return "Celcius"
        }
    }
    
    var accessoryType: UITableViewCellAccessoryType {
        if UserDefaults.temperatureNotation() == temperatureNotation {
            return .checkmark
        } else {
            return .none
        }
    }
    
}

extension SettingsViewTemperatureViewModel: SettingsRepresentable {
    
}
