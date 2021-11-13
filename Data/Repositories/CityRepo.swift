//
//  CityRepo.swift
//  Data
//
//  Created by Алексей Никитин on 06.11.2021.
//

import Domain

public class CityRepo: Domain.CityRepo {
  public init() {}

  public func getCities(with name: String) async -> [City] {
    let query = name.lowercased()
    let result = cities.filter {
      $0.name.lowercased().contains(query)
    }
    return result.mapToDomain()
  }

  private var cities: [CityDTO] {
    guard
      let jsonURL = Bundle(for: Self.self).url(forResource: "city.list", withExtension: "json"),
      let json = try? Data(contentsOf: jsonURL)
    else {
      return []
    }

    return (try? JSONDecoder().decode([CityDTO].self, from: json)) ?? []
  }
}
