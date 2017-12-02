//
//  NetworkManager.swift
//  MVVMWeatherDemoAPP
//
//  Created by Dennis Vera on 11/20/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import Foundation

struct Defaults {
    
    static let Latitude: Double = 51.400592
    static let Longitude: Double = 4.760970
}

struct API {
    
    static let APIKey = "51880986ba359208b4f1cc85edb56a8e"
    static let BaseURL = URL(string: "https://api.darksky.net/forecast/")!

    static var AuthenticatedBaseURL: URL {
        return BaseURL.appendingPathComponent(APIKey)
    }
}
