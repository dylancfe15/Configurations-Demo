//
//  ViewController.swift
//  Dylan's Configurations Example
//
//  Created by Difeng Chen on 4/8/22.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Views

    private lazy var urlLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = configuration.apiURL
        return label
    }()

    // MARK: - Properties

    private let configuration = ConfigurationsManager()

    // MARK: - Lifecycles

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(urlLabel)

        NSLayoutConstraint.activate([
            urlLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            urlLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

