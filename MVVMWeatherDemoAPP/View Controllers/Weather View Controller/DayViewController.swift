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
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var temperatureLabel: UILabel!
    @IBOutlet var windSpeedLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var iconImageView: UIImageView!
    
    // MARK: -
    
    var delegate: DayViewControllerDelegate?
    
    //MARK: -
    
    var now: WeatherData? {
        didSet {
            
            setupView()
        }
    }
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Pulbic Interface
    
    override func reloadData() {
        updateView()
    }
    
    // MARK: - View Methods
    
    private func setupView() {
        
    }
    
    private func updateView() {
        activityIndicatorView.stopAnimating()
        
        if let now = now {
        }
    }
    
    // MARK: -
    
    private func updateWetaherDataContainer(withWeatherData weatherData: WeatherData) {
     weatherDataContainer.isHidden = false
        
        var windSpeed = weatherData.windSpeed
        var temperature = weatherData.temperature
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEE, MMMM d"
        dateLabel.text = dateFormatter.string(from: weatherData.time)
        
        let timeFormatter = DateFormatter()
        
    }
    
}






















