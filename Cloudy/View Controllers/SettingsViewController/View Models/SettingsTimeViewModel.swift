//
//  SettingsTimeViewModel.swift
//  Cloudy
//
//  Created by Bart Jacobs on 03/06/2020.
//  Copyright © 2020 Cocoacasts. All rights reserved.
//

import UIKit

struct SettingsTimeViewModel {

    // MARK: - Properties

    let timeNotation: TimeNotation

    // MARK: - Public API
    
    var text: String {
        switch timeNotation {
        case .twelveHour: return "12 Hour"
        case .twentyFourHour: return "24 Hour"
        }
    }
    
    var accessoryType: UITableViewCell.AccessoryType {
        if UserDefaults.timeNotation == timeNotation {
            return .checkmark
        } else {
            return .none
        }
    }

}

extension SettingsTimeViewModel: SettingsPresentable {

}
