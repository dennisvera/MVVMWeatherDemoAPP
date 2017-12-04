//
//  UIImage.swift
//  MVVMWeatherDemoAPP
//
//  Created by Dennis Vera on 12/3/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import UIKit

extension UIImage {
    
    class func imageForIcon(withName name: String) -> UIImage? {
        
        switch name {
        case "clear-day", "clear-night", "rain", "snow", "sleet":
            return UIImage(named: name)
        case "wind", "cloudy", "partly-cloudy-day", "partly-cloudy-light":
            return UIImage(named: "cloudy")
        default: return UIImage(named: "clear-day")
        }
    }
}
