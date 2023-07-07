//
//  ChecklistCategoryOnboardingVM.swift
//  InvestTracker
//
//  Created by Filip Bulander on 05.07.2023.
//

import SwiftUI

class ChecklistCategoryOnboardingVM: ObservableObject {
    @Published var isChecked: [Bool] = [] {
        didSet {
            saveCategories()
        }
    }
    @Published var name: [String] = []
    
    private var dependencies: ChecklistCategoryOnboardingVMDependencies
    
    init() {
        dependencies = ChecklistCategoryOnboardingVMDependencies()
        for category in CategoryType.allCases {
            isChecked.append(false)
            name.append(category.name)
        }
    }
    
    func saveCategories() {
        let originalList = CategoryType.allCases
        var listToSave: [CategoryType] = []
        for i in 0..<isChecked.count {
            if isChecked[i] {
                let categoryToAppend = originalList[i]
                listToSave.append(categoryToAppend)
            }
        }
        dependencies.databaseInteractor.removeAllCategories()
        for category in listToSave {
            dependencies.databaseInteractor.addCategory(category: category)
        }
    }
}

struct ChecklistCategoryOnboardingVMDependencies {
    @Inject var databaseInteractor: DatabaseInteractorType
}
