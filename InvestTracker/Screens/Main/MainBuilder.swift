//
//  MainBuilder.swift
//  InvestTracker
//
//  Created by Filip Bulander on 05.07.2023.
//

import UIKit

class MainBuilder {
    static func build(appRouter: AppRouter) -> UIViewController {
        let router = MainRouter(appRouter: appRouter)
        let vm = MainVM(router: router)
        let vc = MainVC(vm: vm)
        return vc
    }
}
