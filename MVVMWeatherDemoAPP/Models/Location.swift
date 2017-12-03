//
//  Location.swift
//  MVVMWeatherDemoAPP
//
//  Created by Dennis Vera on 12/3/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import Foundation
import CoreLocation

struct Location {
    
    private enum Keys {
        
        static let name = "name"
        static let latitude = "latitude"
        static let longitude = "longitude"
    }
    
    // MARK: - Properties
    
    let name: String
    let latitude: Double
    let longitude: Double
    
    // MARK: -
    
    var location: CLLocation {
        return CLLocation(latitude: latitude, longitude: longitude)
    }
    
    // MARK: -
    
    var asDictionary: [String: Any] {
        return [ Keys.name: name,
                 Keys.latitude: latitude,
                 Keys.longitude: longitude ]
    }
}

extension Location {
    
    
}
