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
        dateFormatter.dateFormat = UserDefaults.timeNotation().timeFormat
        
        return dateFormatter.string(from: weatherData.time)
    }
    
    var summary: String {
        return weatherData.summary
    }
    
    var temperature: String {
        let temperature = weatherData.temperature
        
        switch UserDefaults.temperatureNotation() {
        case .fahrenheit:
            return String(format: "%.1f °F", temperature)
        case .celsius:
            return String(format: "%.1f °C", temperature.toCelcius())
            
        }
    }
    
    var windSpeed: String {
        let windSpeed = weatherData.windSpeed
        
        switch UserDefaults.unitsNotation() {
        case .imperial:
            return String(format: "%.f MPH", windSpeed)
        case .metric:
            return String(format: "%.f KPH", windSpeed.toKPH())
        }
    }
    
}