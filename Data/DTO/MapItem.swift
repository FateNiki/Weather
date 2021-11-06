//
//  MapItem.swift
//  Data
//
//  Created by Алексей Никитин on 06.11.2021.
//

import Domain
import MapKit

extension MKMapItem: DomainRepresentable {
  func asDomain() -> City {
    return City(id: UUID().uuidString, name: self.name ?? "", country: "Test Country")
  }
}
