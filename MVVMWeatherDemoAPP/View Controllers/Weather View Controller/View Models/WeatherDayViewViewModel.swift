//
//  WeatherDayViewViewModel.swift
//  MVVMWeatherDemoAPP
//
//  Created by Dennis Vera on 1/3/18.
//  Copyright © 2018 Dennis Vera. All rights reserved.
//

import UIKit

struct WeatherDayViewViewModel {
    
    // MARK: - Properties
    
    let weatherDayData: WeatherDayData
    
    // MARK: -
    
    private let dayFormatter = DateFormatter()
    private let dateFormatter = DateFormatter()
    
    // MARK: - Public Interface
    
    var day: String {
        // Configure Date Formatter
        dayFormatter.dateFormat = "EEEE"
        
        return dayFormatter.string(from: weatherDayData.time)
    }
    
    var date: String {
        // Configure Date Formatter
        dateFormatter.dateFormat = "MMMM d"
        
        return dateFormatter.string(from: weatherDayData.time)
    }
    
    var temperature: String {
        let min = format(temperature: weatherDayData.temperatureMin)
        let max = format(temperature: weatherDayData.temperatureMax)
        
        return "\(min) - \(max)"
    }
    
    var windSpeed: String {
        let windSpeed = weatherDayData.windSpeed
        
        switch UserDefaults.unitsNotation() {
        case .imperial:
            return String(format: "%.f MPH", windSpeed)
        case .metric:
            return String(format: "%.f KPH", windSpeed)
        }
    }
    
    var image: UIImage? {
        return UIImage.imageForIcon(withName: weatherDayData.icon)
    }
    
    // MARK: - Private Interface
    
    private func format(temperature: Double) -> String {
        switch UserDefaults.temperatureNotation() {
        case .fahrenheit:
            return String(format: "%.0f °F", temperature)
        case .celsius:
            return String(format: "%.0f °C", temperature)
        }
    }
    
}

extension WeatherDayViewViewModel: WeatherDayRepresentable {
    
}




