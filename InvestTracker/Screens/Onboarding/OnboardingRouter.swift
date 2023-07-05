//
//  OnboardingRouter.swift
//  InvestTracker
//
//  Created by Filip Bulander on 05.07.2023.
//

import UIKit

class OnboardingRouter {
    
    private var appRouter: AppRouter
    
    init(appRouter: AppRouter) {
        self.appRouter = appRouter
    }
    
    func onFinish() {
        appRouter.startMainScreen()
    }
}
