//
//  LaunchViewController.swift
//  Weather
//
//  Created by Алексей Никитин on 13.11.2021.
//

import UIKit

final class LaunchViewController: UIViewController {
  //MARK: - Lifecycle
  override func loadView() {
    view = LaunchView()
  }
}
