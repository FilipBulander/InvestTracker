//
//  InjectResolver.swift
//  InvestTracker
//
//  Created by Filip Bulander on 06.07.2023.
//

import Foundation

public protocol InjectResolver {
    func resolve<T>(_ type: T.Type, name: String?) -> T?
}

public class DummyResolver: InjectResolver {
    var registrations: [String: () -> Any] = [:]

    public init() { }

    public func register<T>(_ type: T.Type, factory: @escaping () -> T) {
        registrations[String(describing: type)] = factory
    }

    public func resolve<T>(_ type: T.Type, name: String?) -> T? {
        registrations[String(describing: type)]?() as? T
    }
}
