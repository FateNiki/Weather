//
//  CitySearchUseCase.swift
//  Domain
//
//  Created by Алексей Никитин on 06.11.2021.
//

public protocol CitySearchUseCase {
  func searchCities(with name: String) async -> [City]
  func fetchStorageCities() async -> [City]
}
