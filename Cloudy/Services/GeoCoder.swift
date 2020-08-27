//
//  GeoCoder.swift
//  Cloudy
//
//  Created by Dennis Vera on 8/27/20.
//  Copyright © 2020 Cocoacasts. All rights reserved.
//

import CoreLocation

class GeoCoder: LocationService {
  
  // MARK: - Properties
  
  private lazy var geocoder = CLGeocoder()
  
  // MARK: - Location Service
  
  func geocode(addressString: String, completion: @escaping Completion) {
    guard !addressString.isEmpty else {
      completion(.failure(.invalidAddressString))
      return
    }
    
    // Geocode Address String
    geocoder.geocodeAddressString(addressString) { (placemarks, error) in
      if let error = error {
        completion(.failure(.requestFailed(error)))
      } else if let placemarks = placemarks {
        // Create Locations
        let locations = placemarks.compactMap({ (placemark) -> Location? in
          guard let name = placemark.name else { return nil }
          guard let location = placemark.location else { return nil }
          return Location(name: name, latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        })
        
        completion(.success(locations))
      }
    }
  }
}
