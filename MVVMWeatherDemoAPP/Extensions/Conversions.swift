//
//  Conversions.swift
//  MVVMWeatherDemoAPP
//
//  Created by Dennis Vera on 12/2/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import Foundation

extension Double {
    
    func toCelcius() -> Double {
        return ((self - 32.0) / 1.8)
    }
    
    func toKPH() -> Double {
        return (self * 1.609344)
    }
    
}
