//
//  ListVM.swift
//  InvestTracker
//
//  Created by Filip Bulander on 06.07.2023.
//

import Foundation
import SwiftUI

class ListVM: ObservableObject {
    
    private var dependencies: ListDependencies
    
    @Published var savedTypes: String = ""
    
    var categories = [
        Main(name: "Animals", subcategories: ["Dog", "Cat", "Elephant"]),
        Main(name: "Cars", subcategories: ["Skoda", "Ferrari", "Porsche"]),
        Main(name: "Fruits", subcategories: ["Orange", "Apple", "Banana"])
    ]
    
    init() {
        dependencies = ListDependencies()
    }
    
    func onAppear() {
        let string = dependencies.databaseProvider.getAllCategories()
            .map { $0.name }
            .joined(separator: ", ")
        savedTypes = string
    }
}

struct ListDependencies {
    @Inject var databaseProvider: DatabaseInteractorType
}

