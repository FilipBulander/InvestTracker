//
//  CurrencyCheckboxListItem.swift
//  InvestTracker
//
//  Created by Filip Bulander on 06.07.2023.
//

import Foundation

struct CurrencyCheckboxListItem: Identifiable {
    let id = UUID()
    let title: String
    var isSelected: Bool
}
