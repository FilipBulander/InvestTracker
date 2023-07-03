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
        let onboardingVC = OnboardingVC()
        navigationController?.isNavigationBarHidden = true
        navigationController?.pushViewController(onboardingVC, animated: true)
    }
}
