//
//  DomainRepresentable.swift
//  Data
//
//  Created by Алексей Никитин on 06.11.2021.
//

protocol DomainRepresentable {
  associatedtype DomainModel

  func asDomain() -> DomainModel
}
