//
//  MainView.swift
//  Weather
//
//  Created by Алексей Никитин on 02.08.2021.
//

import UIKit

final class MainView: UIView {

  private let label: UILabel = .init()

  init() {
    super.init(frame: .zero)
    configure()
    setupView()
    setupConstraints()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

private extension MainView {
  func configure() {
    self.backgroundColor = .systemBackground

    label.text = "Hello world"
    label.translatesAutoresizingMaskIntoConstraints = false
  }

  func setupView() {
    addSubview(label)
  }

  func setupConstraints() {
    NSLayoutConstraint.activate([
      label.centerYAnchor.constraint(equalTo: centerYAnchor),
      label.centerXAnchor.constraint(equalTo: centerXAnchor),
    ])
  }
}
