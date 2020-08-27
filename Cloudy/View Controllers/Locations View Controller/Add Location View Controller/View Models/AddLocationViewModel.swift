//
//  AddLocationViewModel.swift
//  Cloudy
//
//  Created by Dennis Vera on 7/21/20.
//  Copyright © 2020 Cocoacasts. All rights reserved.
//

import RxSwift
import RxCocoa
import Foundation

class AddLocationViewModel {
  
  // MARK: - Properties
  
  var hasLocations: Bool {
    numberOfLocations > 0
  }
  
  var numberOfLocations: Int {
    locationsRelay.value.count
  }
  
  private let locationService: LocationService
  
  var locationsDriver: Driver<[Location]> {
    locationsRelay.asDriver()
  }
  
  private let locationsRelay = BehaviorRelay<[Location]>(value: [])
  
  var queryingDriver: Driver<Bool> {
    queryingRelay.asDriver()
  }
  
  private let queryingRelay = BehaviorRelay<Bool>(value: false)

  private let disposeBag = DisposeBag()
  
  init(query: Driver<String>, locationService: LocationService) {
    self.locationService = locationService
    
    query
      .throttle(.seconds(1))
      .distinctUntilChanged()
      .drive(onNext: { [weak self] addressString in
        self?.geocode(addressString: addressString)
      })
      .disposed(by: disposeBag)
  }
  
  // MARK: - Public API
  
  func location(at index: Int) -> Location? {
    guard index < locationsRelay.value.count else { return nil }
    
    return locationsRelay.value[index]
  }
  
  func viewModelForLocation(at index: Int) -> LocationRepresentable? {
    guard let location = location(at: index) else { return nil }
    
    return LocationViewModel(location: location.location, locationAsString: location.name)
  }
  
  // MARK: - Helper Methods
  
  private func geocode(addressString: String?) {
    guard let addressString = addressString, !addressString.isEmpty else {
      // Reset Location
      locationsRelay.accept([])
      
      return
    }
    
    // Update Helper
    queryingRelay.accept(true)
    
    // Geocode Address String
    locationService.geocode(addressString: addressString) { [weak self] result in
      guard let strongSelf = self else { return }
      
      // Update Helper
      strongSelf.queryingRelay.accept(false)
      
      switch result {
      case .success(let locations):
        strongSelf.locationsRelay.accept(locations)
      case .failure(let error):
        strongSelf.locationsRelay.accept([])
        
        print("Unable to Forward Geocode Adress: \(error)")
      }
    }
  }
}
