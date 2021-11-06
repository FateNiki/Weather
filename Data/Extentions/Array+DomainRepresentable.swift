//
//  Array+DomainRepresentable.swift
//  Data
//
//  Created by Алексей Никитин on 06.11.2021.
//

import Foundation

extension Array where Element: DomainRepresentable {
  func mapToDomain() -> [Element.DomainModel] {
    return self.map { $0.asDomain() }
  }
}
