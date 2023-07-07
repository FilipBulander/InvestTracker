//
//  Inject.swift
//
//
//  Created by Peter Verhage on 01/07/2019.
//  https://github.com/egeniq/InjectPropertyWrapper

// Wrapper is used as layer over dependency Injection framework
// For usage is necessary set static property InjectSettings.resolver on current dependency Injection resolver
// It is also necessary to implement the Resolver protocol for the Dependency Injection framework
//
// Example of usage is:
// @Inject private var apiClient: APIClient

@propertyWrapper
public struct Inject<Value> {
    public private(set) var wrappedValue: Value

    public init() {
        self.init(name: nil, resolver: nil)
    }

    public init(name: String? = nil, resolver: InjectResolver? = nil) {
        guard let resolver = resolver ?? InjectSettings.resolver else {
            fatalError("Make sure InjectSettings.resolver is set!")
        }

        guard let value = resolver.resolve(Value.self, name: name) else {
            fatalError("Could not resolve non-optional \(Value.self)")
        }

        wrappedValue = value
    }

    public init<Wrapped>(name: String? = nil, resolver: InjectResolver? = nil) where Value == Wrapped? {
        guard let resolver = resolver ?? InjectSettings.resolver else {
            fatalError("Make sure InjectSettings.resolver is set!")
        }

        wrappedValue = resolver.resolve(Wrapped.self, name: name)
    }
}
