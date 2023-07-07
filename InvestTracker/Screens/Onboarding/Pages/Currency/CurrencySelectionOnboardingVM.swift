//
//  CurrencySelectionOnboardingVM.swift
//  InvestTracker
//
//  Created by Filip Bulander on 06.07.2023.
//

import Foundation
import SwiftUI

class CurrencySelectionOnboardingVM: ObservableObject {
    @Published var checkboxItems: [CurrencyCheckboxListItem] = [
        CurrencyCheckboxListItem(title: "USD", isSelected: false),
        CurrencyCheckboxListItem(title: "EUR", isSelected: false),
        CurrencyCheckboxListItem(title: "CZK", isSelected: false)
    ]
}
