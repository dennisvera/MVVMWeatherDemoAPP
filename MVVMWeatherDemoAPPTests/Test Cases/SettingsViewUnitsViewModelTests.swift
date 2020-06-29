//
//  SettingsViewUnitsViewModelTests.swift
//  MVVMWeatherDemoAPPTests
//
//  Created by Dennis Vera on 6/29/20.
//  Copyright © 2020 Dennis Vera. All rights reserved.
//

import XCTest
@testable import MVVMWeatherDemoAPP

class SettingsViewUnitsViewModelTests: XCTestCase {
  
  override func setUpWithError() throws {
  }
  
  override func tearDownWithError() throws {
    UserDefaults.standard.removeObject(forKey: "unitsNotatio")
  }
  
  func testText_Imperial() {
    let viewModel = SettingsViewUnitsViewModel(unitsNotation: .imperial)
    
    XCTAssertEqual(viewModel.text, "Imperial")
  }
  
  func testText_Metric() {
    let viewModel = SettingsViewUnitsViewModel(unitsNotation: .metric)
    
    XCTAssertEqual(viewModel.text, "Metric")
  }
  
  func testAccesoryType_Imperial_Imperial() {
    let unitsNotation: UnitsNotation = .imperial
    UserDefaults.standard.set(unitsNotation.rawValue, forKey: "unitsNotation")
    
    let viewModel = SettingsViewUnitsViewModel(unitsNotation: .imperial)
    
    XCTAssertEqual(viewModel.accessoryType, UITableViewCell.AccessoryType.checkmark)
  }
  
  func testAccesoryType_Imperial_Metric() {
    let unitsNotation: UnitsNotation = .imperial
    UserDefaults.standard.set(unitsNotation.rawValue, forKey: "unitsNotation")
    
    let viewModel = SettingsViewUnitsViewModel(unitsNotation: .metric)
    
    XCTAssertEqual(viewModel.accessoryType, UITableViewCell.AccessoryType.none)
  }
  
  func testAccesoryType_Metric_Metric() {
    let unitsNotation: UnitsNotation = .metric
    UserDefaults.standard.set(unitsNotation.rawValue, forKey: "unitsNotation")
    
    let viewModel = SettingsViewUnitsViewModel(unitsNotation: .metric)
    
    XCTAssertEqual(viewModel.accessoryType, UITableViewCell.AccessoryType.checkmark)
  }
}
