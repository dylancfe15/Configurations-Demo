//
//  ConfigurationsManager.swift
//  Dylan's Configurations Example
//
//  Created by Difeng Chen on 4/9/22.
//

import Foundation

class ConfigurationsManager {
    // MARK: - Properties
    var apiURL: String?

    // MARK: - Initializers
    init() {
        apiURL = property(for: .apiURL) as? String
    }

    // MARK: - Functions

    private func property(for key: Property) -> Any? {
        Bundle.main.object(forInfoDictionaryKey: key.rawValue)
    }
}

extension ConfigurationsManager {
    enum Property: String {
        case apiURL = "API URL"
    }
}
