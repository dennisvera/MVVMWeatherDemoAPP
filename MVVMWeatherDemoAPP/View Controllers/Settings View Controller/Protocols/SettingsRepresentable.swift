//
//  SettingsRepresentable.swift
//  MVVMWeatherDemoAPP
//
//  Created by Dennis Vera on 1/2/18.
//  Copyright © 2018 Dennis Vera. All rights reserved.
//

import UIKit

protocol SettingsRepresentable {
    
    var text: String { get }
    var accessoryType: UITableViewCellAccessoryType { get }
    
}
