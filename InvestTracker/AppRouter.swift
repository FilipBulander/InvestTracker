//
//  AppRouter.swift
//  InvestTracker
//
//  Created by Filip Bulander on 03.07.2023.
//

import UIKit
import SwiftUI

class AppRouter {
    private var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    func start() {
        startOnboarding()
    }
    
    func startOnboarding() {
        let vc = OnboardingBuilder.build(appRouter: self)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func startMainScreen() {
        let vc = MainBuilder.build(appRouter: self)
        navigationController?.navigationBar.isHidden = true
        navigationController?.pushViewController(vc, animated: true)
    }
}
