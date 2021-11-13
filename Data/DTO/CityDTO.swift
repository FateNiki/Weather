//
//  CityDTO.swift
//  Data
//
//  Created by Алексей Никитин on 06.11.2021.
//

import Domain

struct CityDTO: Decodable {
  let id: Double
  let name: String
  let state: String
  let country: String
}

extension CityDTO: DomainRepresentable {
  func asDomain() -> City {
    return City(id: "\(id)", name: name, country: country)
  }
}
