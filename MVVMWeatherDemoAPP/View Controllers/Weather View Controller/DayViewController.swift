//
//  DayViewController.swift
//  MVVMWeatherDemoAPP
//
//  Created by Dennis Vera on 12/1/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import UIKit

protocol DayViewControllerDelegate {
    func controllerDidTapSettingsButton(controller: DayViewController)
    func controllerDidTapLocationButton(controller: DayViewController)
}

class DayViewController: WeatherViewController {
    
    // MARK: - Properties
    
    
    // MARK: -
    
    var delegate: DayViewControllerDelegate?
    
}
