//
//  WeatherDayData.swift
//  MVVMWeatherDemoAPP
//
//  Created by Dennis Vera on 12/2/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import Foundation

struct WeatherDayData {
    
    let time: Date
    let icon: String
    let windSpeed: Double
    let temperatureMin: Double
    let temperaureMax: Double
}

extension WeatherDayData: JSONDecodable {
    
    init(decoder: JSONDecoder) throws {
        self.icon = try decoder.decode(key: "icon")
        self.windSpeed = try decoder.decode(key: "windSpeed")
        self.temperatureMin = try decoder.decode(key: "temperarureMin")
        self.temperaureMax = try decoder.decode(key: "temperatureMax")
        
        let time: Double = try decoder.decode(key: "time")
        self.time = Date(timeIntervalSince1970: time)
    }
}
