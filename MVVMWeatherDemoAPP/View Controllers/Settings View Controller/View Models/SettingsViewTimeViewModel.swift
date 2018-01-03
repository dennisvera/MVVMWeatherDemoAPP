//
//  SettingsViewTimeViewModel.swift
//  MVVMWeatherDemoAPP
//
//  Created by Dennis Vera on 12/7/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import UIKit

struct SettingsViewTimeViewModel {
    
    // MARK: - Properties
    
    let timeNotation: TimeNotation
    
    // MARK: -
    
    var text: String {
        switch timeNotation {
        case .twelveHour: return "12 Hour"
        case .twentyFourHour: return "24 Hour"
        }
    }
    
    var accessoryType: UITableViewCellAccessoryType {
        if UserDefaults.timeNotation() == timeNotation {
            return .checkmark
        } else {
            return .none
        }
    }
    
}

extension SettingsViewTimeViewModel: SettingsRepresentable {
    
}
