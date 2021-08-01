//
//  MainViewController.swift
//  Weather
//
//  Created by Алексей Никитин on 02.08.2021.
//

import UIKit

final class MainViewController: UIViewController {
    override func loadView() {
        super.loadView()
        self.view = MainView()
    }
}
