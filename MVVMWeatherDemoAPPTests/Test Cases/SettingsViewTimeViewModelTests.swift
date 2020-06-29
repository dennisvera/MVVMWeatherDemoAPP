//
//  SettingsViewTimeViewModelTests.swift
//  MVVMWeatherDemoAPPTests
//
//  Created by Dennis Vera on 6/29/20.
//  Copyright © 2020 Dennis Vera. All rights reserved.
//

import XCTest
@testable import MVVMWeatherDemoAPP

class SettingsViewTimeViewModelTests: XCTestCase {
  
  override func setUpWithError() throws {
    
  }
  
  override func tearDownWithError() throws {
    UserDefaults.standard.removeObject(forKey: "timeNotation")
  }
  
  func test_Text_TwelveHours() {
    let viewModel = SettingsViewTimeViewModel(timeNotation: .twelveHour)
    
    XCTAssertEqual(viewModel.text, "12 Hour")
  }
  
  func test_Text_TwentyFourHours() {
    let viewModel = SettingsViewTimeViewModel(timeNotation: .twentyFourHour)
    
    XCTAssertEqual(viewModel.text, "24 Hour")
  }
  
  func testAccesoryType_TwelveHour_TwelveHour() {
    let timeNotation: TimeNotation = .twelveHour
    UserDefaults.standard.set(timeNotation.rawValue, forKey: "timeNotation")
    
    let viewModel = SettingsViewTimeViewModel(timeNotation: .twelveHour)
    
    XCTAssertEqual(viewModel.accessoryType, UITableViewCell.AccessoryType.checkmark)
  }
  
  func testAccesoryType_TwelveHour_TwentyFourHour() {
    let timeNotation: TimeNotation = .twentyFourHour
    UserDefaults.standard.set(timeNotation.rawValue, forKey: "timeNotation")
    
    let viewModel = SettingsViewTimeViewModel(timeNotation: .twelveHour)
    
    XCTAssertEqual(viewModel.accessoryType, UITableViewCell.AccessoryType.none)
  }
  
  func testAccesoryType_TwentyFourHour_TwentyFourHour() {
    let timeNotation: TimeNotation = .twentyFourHour
    UserDefaults.standard.set(timeNotation.rawValue, forKey: "timeNotation")
    
    let viewModel = SettingsViewTimeViewModel(timeNotation: .twentyFourHour)
    
    XCTAssertEqual(viewModel.accessoryType, UITableViewCell.AccessoryType.checkmark)
  }
}
