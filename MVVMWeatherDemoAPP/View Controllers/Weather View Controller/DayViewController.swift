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
    
    var viewModel: DayViewViewModel? {
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
        
        if let viewModel = viewModel {
            updateWeatherDataContainer(withViewModel: viewModel)
        } else {
            messageLabel.isHidden = false
            messageLabel.text = "Cloudy was unable to fetch weather data."
        }
    }
    
    // MARK: -
    
    private func updateWeatherDataContainer(withViewModel viewModel: DayViewViewModel) {
     weatherDataContainer.isHidden = false

        dateLabel.text = viewModel.date
        timeLabel.text = viewModel.time
        windSpeedLabel.text = viewModel.windSpeed
        descriptionLabel.text = viewModel.summary
        iconImageView.image = viewModel.image

    }
    
    // MARK: - Actions
    
    @IBAction func didTapSettingsButton(_ sender: Any) {
        delegate?.controllerDidTapSettingsButton(controller: self)
    }
    
    @IBAction func didTapLocationButton(_ sender: Any) {
        delegate?.controllerDidTapLocationButton(controller: self)
    }
    
    
}






















