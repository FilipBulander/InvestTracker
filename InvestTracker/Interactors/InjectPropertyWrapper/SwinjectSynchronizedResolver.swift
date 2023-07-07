//
//  SwinjectSynchronizedResolver.swift
//  InvestTracker
//
//  Created by Filip Bulander on 06.07.2023.
//

import UIKit
import Swinject

public class SwinjectSynchronizedResolver: InjectResolver {
    public init() { }

    public func resolve<T>(_ type: T.Type, name: String?) -> T? {
        let resolver = (UIApplication.shared.delegate as! AppDelegate).resolver // swiftlint:disable:this force_cast
        return resolver.resolve(type, name: name)
    }
}
