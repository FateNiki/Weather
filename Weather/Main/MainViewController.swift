//
//  MainViewController.swift
//  Weather
//
//  Created by Алексей Никитин on 02.08.2021.
//


import Domain
import class Data.CityRepo
import class Data.CityStorage
import UIKit

final class MainViewController: UIViewController {
  private let cityRepo: Domain.CityRepo = CityRepo()
  private let cityStorage: Domain.CityStorage = CityStorage()

  private lazy var useCase = CitySearchUseCaseImpl(
    cityRepo: cityRepo,
    cityStorage: cityStorage
  )

  override func loadView() {
    super.loadView()
    self.view = MainView()

    Task {
      let cities = await useCase.searchCities(with: "Иж")
      print(cities)
    }
  }
}
