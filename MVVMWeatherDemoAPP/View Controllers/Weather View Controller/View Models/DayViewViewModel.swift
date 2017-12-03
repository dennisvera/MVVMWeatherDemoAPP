//
//  DayViewView-Model.swift
//  MVVMWeatherDemoAPP
//
//  Created by Dennis Vera on 12/2/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import Foundation

struct DayViewViewModel {
    
    // MARK: - Properties
    
    let weatherData: WeatherData
    
    var date: String {
        // Initialize Date Formatter
        let dateFormatter = DateFormatter()
        
        // Configure Date Formatter
        dateFormatter.dateFormat = "EEE, MMMM d"
        
        return dateFormatter.string(from: weatherData.time)
    }
    
    var time: String {
        // Initialize Date Formatter
        let dateFormatter = DateFormatter()
        
        // Configure Date Formatter
        dateFormatter.dateFormat = ""
        
        return dateFormatter.string(from: weatherData.time)
    }
    
    
}
