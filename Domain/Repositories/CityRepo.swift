//
//  CityRepo.swift
//  Domain
//
//  Created by Алексей Никитин on 06.11.2021.
//

public protocol CityRepo {
  func getCities(with name: String) async -> [City]
}
