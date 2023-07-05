//
//  DivideCategoryOnboardingVM.swift
//  InvestTracker
//
//  Created by Filip Bulander on 05.07.2023.
//

import Foundation

class DivideCategoryOnboardingVM {
    var noCallback: (() -> Void)?
    var yesCallback: (() -> Void)?
    
    func noTapped() {
        noCallback?()
    }
    
    func yesTapped() {
       yesCallback?()
    }
}
