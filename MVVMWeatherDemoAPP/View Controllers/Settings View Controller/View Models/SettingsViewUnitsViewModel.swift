//
//  SettingsViewUnitsViewModel.swift
//  MVVMWeatherDemoAPP
//
//  Created by Dennis Vera on 1/2/18.
//  Copyright © 2018 Dennis Vera. All rights reserved.
//

import UIKit

struct SettingsViewUnitsViewModel {
    
    // MARK: - Properties
    
    let unitsNotation: UnitsNotation
    
    // MARK: -
    
    var text: String {
        switch unitsNotation {
        case .imperial: return "Imperial"
        case .metric: return "Metric"
        }
    }

    var accesoryType: UITableViewCellAccessoryType {
        if UserDefaults.unitsNotation() == unitsNotation {
            return .checkmark
        } else {
            return .none
        }
    }
    
}
