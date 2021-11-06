//
//  CityStorage.swift
//  Domain
//
//  Created by Алексей Никитин on 06.11.2021.
//

public protocol CityStorage {
  func getCities() async -> [City]
}
