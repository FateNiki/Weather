//
//  CityRepo.swift
//  Data
//
//  Created by Алексей Никитин on 06.11.2021.
//

import Domain
import MapKit

public class CityRepo: Domain.CityRepo {
  public init() { }

  public func getCities(with name: String) async -> [City] {
    let request = MKLocalSearch.Request()
    request.resultTypes = .address
    request.naturalLanguageQuery = name
    let localSearch = MKLocalSearch(request: request)
    let response = try? await localSearch.start()
    guard let items = response?.mapItems else {
      return []
    }
    return items.mapToDomain()
  }
}
