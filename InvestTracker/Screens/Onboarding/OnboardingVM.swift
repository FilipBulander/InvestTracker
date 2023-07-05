//
//  OnboardingVM.swift
//  InvestTracker
//
//  Created by Filip Bulander on 03.07.2023.
//

import Foundation

class OnboardingVM {
    private var router: OnboardingRouter
    
    init(router: OnboardingRouter) {
        self.router = router
    }
    
    func onFinish() {
        router.onFinish()
    }
}
