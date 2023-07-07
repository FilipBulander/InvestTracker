//
//  PreviewProvider.swift
//  InvestTracker
//
//  Created by Filip Bulander on 06.07.2023.
//

import SwiftUI

extension PreviewProvider {
    static func mockThisWorld() {
        let dummyResolver = DummyResolver()
        dummyResolver.register(DatabaseInteractorType.self) {
            DummyDatabaseInteractor()
        }
        InjectSettings.resolver = dummyResolver
    }
}
