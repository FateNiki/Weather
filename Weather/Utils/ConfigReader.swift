//
//  ConfigReader.swift
//  Weather
//
//  Created by Алексей Никитин on 02.08.2021.
//

import Foundation

final class ConfigReader {
  enum Keys: String {
    case apiKey = "API_KEY"
  }

  static func value<Result>(forKey key: Keys) -> Result {
    guard
      let value = Bundle.main.object(forInfoDictionaryKey: key.rawValue) as? Result
    else {
      fatalError("Invalid value or undefined key")
    }
    return value
  }
}
