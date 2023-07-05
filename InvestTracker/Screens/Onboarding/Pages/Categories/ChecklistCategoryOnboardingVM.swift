//
//  ChecklistCategoryOnboardingVM.swift
//  InvestTracker
//
//  Created by Filip Bulander on 05.07.2023.
//

import SwiftUI

class ChecklistCategoryOnboardingVM: ObservableObject {
    @Published var isChecked: [Bool] = [false, false, false]
}
