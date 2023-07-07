//
//  Category.swift
//  InvestTracker
//
//  Created by Filip Bulander on 05.07.2023.
//

import Foundation

enum CategoryType: String, CaseIterable {
    case stocks
    case funds
    case realEstates
    case cryptocurrencies
    case commodities
    case cash
    case other
    
    var name: String {
        switch self {
        case .stocks:
            return R.string.localizable.categoryStocks()
        case .funds:
            return R.string.localizable.categoryFunds()
        case .realEstates:
            return R.string.localizable.categoryRealEstates()
        case .cryptocurrencies:
            return R.string.localizable.categoryCryptocurrencies()
        case .commodities:
            return R.string.localizable.categoryCommodities()
        case .cash:
            return R.string.localizable.categoryCash()
        case .other:
            return R.string.localizable.categoryOther()
        }
    }
    
    var rawValue: String {
        switch self {
        case .stocks:
            return "stocks"
        case .funds:
            return "funds"
        case .realEstates:
            return "realEstates"
        case .cryptocurrencies:
            return "crypto"
        case .commodities:
            return "commodities"
        case .cash:
            return "cash"
        case .other:
            return "other"
        }
    }
}

struct Category {
    var categoryType: CategoryType
}
