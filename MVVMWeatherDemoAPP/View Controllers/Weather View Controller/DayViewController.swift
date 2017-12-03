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
            updateView()
        }
    }
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
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
            updateWetaherDataContainer(withWeatherData: now)
        } else {
            messageLabel.isHidden = false
            messageLabel.text = "Cloudy was unable to fetch weather data."
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
        
        if UserDefaults.timeNotation() == .twelveHour {
            timeFormatter.dateFormat = "hh:mm a"
        } else {
            timeFormatter.dateFormat = "HH:mm"
        }
        
        timeLabel.text = timeFormatter.string(from: weatherData.time)
        
        descriptionLabel.text = weatherData.summary
        
        if UserDefaults.temperatureNotation() != .fahrenheit {
            temperature = temperature.toCelcius()
            temperatureLabel.text = String(format: "%.1f °C", temperature)
        } else {
            temperatureLabel.text = String(format: "%.1f °F", temperature)
        }
        
        if UserDefaults.unitsNotation() != .imperial {
            windSpeed = windSpeed.toKPH()
            windSpeedLabel.text = String(format: "%.f KPH", windSpeed)
        } else {
            windSpeedLabel.text = String(format: "%.f MPH", windSpeed)
        }
        
        iconImageView.image = ImageForIcon(withName: weatherData.icon)
        
    }
    
    // MARK: - Actions
    
    @IBAction func didTapSettingsButton(_ sender: Any) {
        delegate?.controllerDidTapSettingsButton(controller: self)
    }
    
    @IBAction func didTapLocationButton(_ sender: Any) {
        delegate?.controllerDidTapLocationButton(controller: self)
    }
    
    
}






















