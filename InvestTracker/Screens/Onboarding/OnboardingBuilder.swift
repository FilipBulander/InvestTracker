//
//  OnboardingBuilder.swift
//  InvestTracker
//
//  Created by Filip Bulander on 05.07.2023.
//

import UIKit

class OnboardingBuilder {
    static func build(appRouter: AppRouter) -> UIViewController {
        let router = OnboardingRouter(appRouter: appRouter)
        let vm = OnboardingVM(router: router)
        let vc = OnboardingVC(vm: vm)
        return vc
    }
}
