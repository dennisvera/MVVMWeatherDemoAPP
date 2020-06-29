//
//  SettingsViewTemperatureViewModelTests.swift
//  MVVMWeatherDemoAPPTests
//
//  Created by Dennis Vera on 6/29/20.
//  Copyright © 2020 Dennis Vera. All rights reserved.
//

import XCTest
@testable import MVVMWeatherDemoAPP

class SettingsViewTemperatureViewModelTests: XCTestCase {
  
  override func setUpWithError() throws {
  }
  
  override func tearDownWithError() throws {
    UserDefaults.standard.removeObject(forKey: "temperatureNotation")
  }
  
  func testText_Fahrenheit() {
    let viewModel = SettingsViewTemperatureViewModel(temperatureNotation: .fahrenheit)
    
    XCTAssertEqual(viewModel.text, "Fahrenheit")
  }
  
  func testText_Celcius() {
    let viewModel = SettingsViewTemperatureViewModel(temperatureNotation: .celsius)
    
    XCTAssertEqual(viewModel.text, "Celcius")
  }
  
  func testAccesoryType_Fahrenheit_Fahrenheit() {
    let temperatureNotation: TemperatureNotation = .fahrenheit
    UserDefaults.standard.set(temperatureNotation.rawValue, forKey: "temperatureNotation")
    
    let viewModel = SettingsViewTemperatureViewModel(temperatureNotation: .fahrenheit)
    
    XCTAssertEqual(viewModel.accessoryType, UITableViewCell.AccessoryType.checkmark)
  }
  
  func testAccesoryType_Fahrenheit_Celcius() {
    let temperatureNotation: TemperatureNotation = .fahrenheit
    UserDefaults.standard.set(temperatureNotation.rawValue, forKey: "temperatureNotation")
    
    let viewModel = SettingsViewTemperatureViewModel(temperatureNotation: .celsius)
    
    XCTAssertEqual(viewModel.accessoryType, UITableViewCell.AccessoryType.none)
  }
  
  func testAccesoryType_Celcius_Celcius() {
    let temperatureNotation: TemperatureNotation = .celsius
    UserDefaults.standard.set(temperatureNotation.rawValue, forKey: "temperatureNotation")
    
    let viewModel = SettingsViewTemperatureViewModel(temperatureNotation: .celsius)
    
    XCTAssertEqual(viewModel.accessoryType, UITableViewCell.AccessoryType.checkmark)
  }
}
