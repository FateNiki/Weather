//
//  CitySearchUseCaseImpl.swift
//  Domain
//
//  Created by Алексей Никитин on 06.11.2021.
//

public class CitySearchUseCaseImpl: CitySearchUseCase {
  private let cityRepo: CityRepo
  private let cityStorage: CityStorage

  public init(
    cityRepo: CityRepo,
    cityStorage: CityStorage
  ) {
    self.cityRepo = cityRepo
    self.cityStorage = cityStorage
  }

  public func searchCities(with name: String) async -> [City] {
    return await cityRepo.getCities(with: name)
  }

  public func fetchStorageCities() async -> [City] {
    return await cityStorage.getCities()
  }
}
