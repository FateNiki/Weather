//
//  City.swift
//  Domain
//
//  Created by Алексей Никитин on 06.11.2021.
//

public struct City {
  public let id: String
  public let name: String
  public let country: String

  public init(
    id: String,
    name: String,
    country: String
  ) {
    self.id = id
    self.name = name
    self.country = country
  }
}
