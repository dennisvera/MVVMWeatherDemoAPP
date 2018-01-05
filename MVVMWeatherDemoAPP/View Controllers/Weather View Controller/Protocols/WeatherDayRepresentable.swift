//
//  WeatherDayRepresentable.swift
//  MVVMWeatherDemoAPP
//
//  Created by Dennis Vera on 1/3/18.
//  Copyright © 2018 Dennis Vera. All rights reserved.
//

import UIKit

protocol WeatherDayRepresentable {
    
    var day: String { get }
    var date: String { get }
    var image: UIImage? { get }
    var windSpeed: String { get }
    var temperature: String { get }
    
    
}
