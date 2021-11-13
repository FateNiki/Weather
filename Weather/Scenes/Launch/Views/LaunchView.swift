//
//  LaunchView.swift
//  Weather
//
//  Created by Алексей Никитин on 13.11.2021.
//

import UIKit

final class LaunchView: UIView {
  // MARK: - Properties
  private let imageView = UIImageView(image: UIImage(named: Constants.imageName))
  private let activityView = UIActivityIndicatorView(style: .medium)

  // MARK: - Inits
  init() {
    super.init(frame: .zero)

    setupView()
    setupLayout()
  }

  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: - Private methods
  private func setupView() {
    backgroundColor = UIColor(named: Constants.colorName)
    imageView.translatesAutoresizingMaskIntoConstraints = false
    activityView.translatesAutoresizingMaskIntoConstraints = false
    activityView.startAnimating()
  }

  private func setupLayout() {
    addSubview(imageView)
    NSLayoutConstraint.activate([
      imageView.centerXAnchor.constraint(equalTo: centerXAnchor),
      imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
      imageView.widthAnchor.constraint(equalToConstant: Constants.imageSize),
      imageView.heightAnchor.constraint(equalToConstant: Constants.imageSize),
    ])

    addSubview(activityView)
    NSLayoutConstraint.activate([
      activityView.centerXAnchor.constraint(equalTo: centerXAnchor),
      activityView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: Constants.offset)
    ])
  }
}

// MARK: - Constants
private extension LaunchView {
  enum Constants {
    static let imageSize: CGFloat = 120
    static let offset: CGFloat = -20
    static let colorName = "AppLaunchColor"
    static let imageName = "AppLaunchIcon"
  }
}
